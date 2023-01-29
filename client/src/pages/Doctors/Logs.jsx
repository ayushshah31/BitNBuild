import React, { useState } from 'react';
import axios from 'axios';
import { useSelector, useDispatch } from 'react-redux';
import { setAppointments, setAppoint } from "../../state/authSlice";

const Logs = ({ key, appoint }) => {
    const dispatch = useDispatch();
    const user = useSelector((state) => state.user);
    const [accept, setAccept] = useState(false);
    const [startTime, setStartTime] = useState();
    const [endTime, setEndTime] = useState();
    const [date, setDate] = useState();

    const updateAppointment = async (e, status) => {
        const appointmentId = JSON.parse(e.target.dataset.appointment)._id;
        
        try {
            const response = await axios.post(`http://localhost:3001/appointment/${appointmentId}/${status}`, {
                id: user._id,
                startTime,
                endTime,
                date,
            });
    
            if(response.status === 204) {
                const time = {
                    startTime,
                    endTime,
                    date,
                };
                dispatch(setAppoint(time));
                dispatch(setAppointments(time));
                window.location.reload();
            }
        } catch (error) {
            console.log(error);
        }
    }

    return (
        <div key={appoint._id}>
            <div className="flex w-[930px] mb-10" >
                <div className="flex items-center px-10 py-5 w-screen bg-ourdblue text-white rounded-xl justify-between">
                    <div className="my-5">
                    <p>Patient Name: {appoint.patientId.name}</p>
                    <p>Patient Email: {appoint.patientId.email}</p>
                    <p>Status: {appoint.status}</p>
                    </div>
                    <div>
                    <div className="flex items-center justify-center gap-3">
                        <div className="font-2xl text-slate-100 cursor-pointer mr-2 w-8" onClick={() => { setAccept(!accept) }}>
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                            <path fill="#e2e8f0" d="M470.6 105.4c12.5 12.5 12.5 32.8 0 45.3l-256 256c-12.5 12.5-32.8 12.5-45.3 0l-128-128c-12.5-12.5-12.5-32.8 0-45.3s32.8-12.5 45.3 0L192 338.7 425.4 105.4c12.5-12.5 32.8-12.5 45.3 0z"/>
                        </svg>
                        </div>
                        <div className="font-lg text-slate-100 cursor-pointer mr-2 w-5" data-appointment={JSON.stringify(appoint)} onClick={(e) => { updateAppointment(e, 'reject') }} >
                        <svg data-appointment={JSON.stringify(appoint)} xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512">
                            <path data-appointment={JSON.stringify(appoint)} fill="#e2e8f0" d="M310.6 150.6c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L160 210.7 54.6 105.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3L114.7 256 9.4 361.4c-12.5 12.5-12.5 32.8 0 45.3s32.8 12.5 45.3 0L160 301.3 265.4 406.6c12.5 12.5 32.8 12.5 45.3 0s12.5-32.8 0-45.3L205.3 256 310.6 150.6z"/>
                        </svg>
                        </div>
                    </div>
                    <div id="dropdown" className="z-10 absolute right-52 bg-white divide-y divide-gray-100 rounded-lg shadow w-44 dark:bg-gray-700" style={ accept ? { display: 'block' } : { display: 'none' }} >
                        <ul className="py-2 text-sm text-gray-700 dark:text-gray-200">
                        <li>
                            <label className="block px-4 py-2 text-slate-50">Start Time</label>
                            <input type="time" name="startTime" id="startTime" className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:focus:bg-slate-200 dark:focus:text-slate-900" onChange={(e) => { setStartTime(e.target.value) }} required></input>
                        </li>
                        <li>
                            <label className="block px-4 py-2 text-slate-50">End Time</label>
                            <input type="time" name="endTime" id="endTime" className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:focus:bg-slate-200 dark:focus:text-slate-900" onChange={(e) => { setEndTime(e.target.value) }} required></input>
                        </li>
                        <li>
                            <label className="block px-4 py-2 text-slate-50">Date</label>
                            <input type="date" name="date" id="date" className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:focus:bg-slate-200 dark:focus:text-slate-900" onChange={(e) => { setDate(e.target.value) }} required></input>
                        </li>
                        <li className="flex justify-center pb-2">
                            <button className="inline-flex items-center mx-auto px-6 py-2 mt-3 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800" data-appointment={JSON.stringify(appoint)} onClick={(e) => { updateAppointment(e, 'accept') }}>Set Appointment</button>
                        </li>
                        </ul>
                    </div>
                    </div>
                </div>
                </div>
        </div>
    )
}

export default Logs;