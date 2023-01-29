import React, { useState } from "react";
import DoctorsSidebar from "./DoctorsSidebar";
import { useSelector } from 'react-redux';
import { useNavigate } from "react-router-dom";
import { Inject, ScheduleComponent, Day, Week, WorkWeek, Month, Agenda } from '@syncfusion/ej2-react-schedule';

const DoctorsCalendar = () => {
  const navigate = useNavigate();
  const click = (e) => {
    if(e.target.attributes.class.nodeValue === "e-work-cells e-current-date e-selected-cell") {
      navigate('/room');
    }
  }
  const appointments = useSelector((state) => state.appointments);
  // const [counter, setCounter] = useState;
  let counter = 0;
  let appoint = [];
  if(appointments) {
    appoint = appointments.map((appointment) => {
      counter++;
      const date = appointment.date.split('-');
      const startTime = appointment.startTime;
      const endTime = appointment.endTime;
      const year = date[0];
      const month = date[1];
      const day = date[2];
      // const startTimeHour = startTime[0];
      // const startTimeMinute = startTime[1];
      // const endTimeHour = endTime[0];
      // const endTimeMinute = endTime[1]
      console.log(startTime, endTime)
      return {
        Id: counter,
        Subject: 'XYZ',
        // EndTime: new Date(year, 0, day, startTimeHour, startTimeMinute),
        // StartTime: new Date(year, 0, day, endTimeHour, endTimeMinute),
      }
    });
    console.log(appoint);
  }

  return (
    <div>
      <DoctorsSidebar/>
      <div className="ml-72 mt-7 mr-5" onClick={(e) => { click(e) }}>
        <ScheduleComponent currentView="Month" selectedDate={new Date(2023, 0, 29)} eventSettings={{ dataSource: appoint }} >
          <Inject services={[Day, Week, WorkWeek, Month, Agenda]} />
        </ScheduleComponent>
      </div>
    </div>
  );
};

export default DoctorsCalendar;
