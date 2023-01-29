import React, { useState, useEffect } from "react";
import DoctorsSidebar from "./DoctorsSidebar";
import axios from 'axios';
import { useSelector } from 'react-redux';
import Logs from "./Logs";

const DoctorsLogs = () => {
  const user = useSelector((state) => state.user);
  const [appointment, setAppointment] = useState([]);

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

  return (
    <div>
      <DoctorsSidebar/>
      <div className="ml-80 mt-7">
        <div className="text-3xl font-bold overflow-hidden mb-7">Appointments</div>
        {appointment && appointment.map((appoint) => {
          return (
            <Logs appoint={appoint} />
          )
        })}
      </div>
    </div>
  );
};

export default DoctorsLogs;