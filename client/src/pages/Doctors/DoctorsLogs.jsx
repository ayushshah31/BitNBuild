import React, { useState, useEffect } from "react";
import DoctorsSidebar from "./DoctorsSidebar";
import axios from 'axios';
import { useSelector, useDispatch } from 'react-redux';
import { TiTick } from 'react-icons/ti';
import { RxCross1 } from 'react-icons/rx';
import { setAppointments, setAppoint } from "../../state/authSlice";

const DoctorsLogs = () => {
  const dispatch = useDispatch();
  const user = useSelector((state) => state.user);
  const [appointment, setAppointment] = useState([]);
  const [accept, setAccept] = useState(false);
  const [startTime, setStartTime] = useState();
  const [endTime, setEndTime] = useState();
  const [date, setDate] = useState();

  useEffect(() => {
    const getAppointment = async () => {
      try {
        const appointments = await axios.get(`http://localhost:3001/appointment/${user._id}`);
        setAppointment(appointments.data);
        console.log(appointments.data);
      } catch (error) {
        console.log(error);
      }
    }
    getAppointment();
  }, []);

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
    <div>
      <DoctorsSidebar/>
      <div className="ml-80 mt-7">
        {appointment && appointment.map((appoint) => {
          return (
            <div key={appoint._id} className="flex items-center justify-around">
              <div key={appoint._id} className="my-5">
                <p>Patient Name: {appoint.patientId.name}</p>
                <p>Patient Email: {appoint.patientId.email}</p>
                <p>Status: {appoint.status}</p>
              </div>
              <div>
                <div className="flex items-center justify-center">
                  <TiTick fontSize={24} onClick={() => { setAccept(!accept) }} className="mr-2 cursor-pointer" />
                  <RxCross1 data-appointment={JSON.stringify(appoint)} fontSize={24} onClick={(e) => { updateAppointment(e, 'reject') }} className="cursor-pointer" />
                </div>
                <div className="flex items-center justify-between gap-10" style={ accept ? { display: 'block' } : { display: 'none' }}>
                  <input type="time" name="startTime" id="startTime" onChange={(e) => { setStartTime(e.target.value) }} />
                  <input type="time" name="endTime" id="endTime" onChange={(e) => { setEndTime(e.target.value) }} />
                  <input type="date" name="date" id="date" onChange={(e) => { setDate(e.target.value) }} />
                  <button type="button" data-appointment={JSON.stringify(appoint)} onClick={(e) => { updateAppointment(e, 'accept') }}>Set Appointment</button>
                </div>
              </div>
            </div>
          )
        })}
      </div>
    </div>
  );
};

export default DoctorsLogs;