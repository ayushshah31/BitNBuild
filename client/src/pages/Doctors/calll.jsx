import { useState } from "react";
import { useSelector } from 'react-redux';
import Header from "./Calendar/Header";
import Week from "./Calendar/Week";

export default function Calendar() {
  const def = [{ title: null, date: null, start: null, end: null }];
  const appointments = useSelector((state) => state.appointments);
  const appoint = appointments.map((appointment) => {
    // counter++;
    const date = appointment.date.split('-');
    const startTime = appointment.startTime.split(':');
    const endTime = appointment.endTime.split(':');
    const year = date[0];
    const month = date[1];
    const day = date[2];
    const startTimeHour = startTime[0];
    const startTimeMinute = startTime[1];
    const endTimeHour = endTime[0];
    const endTimeMinute = endTime[1];
    return {
      title: 'XYZ',
      date: new Date(),
      end: new Date(year, 0, day, startTimeHour, startTimeMinute),
      start: new Date(year, 0, day, endTimeHour, endTimeMinute),
    }
  });
  const [schedule, setSchedule] = useState(appoint);
  return (
    <div className="flex justify-center">
      <div className="w-10/12 bg-gray-50">
        <Header />
        <Week schedule={schedule} />
      </div>
    </div>
  );
}
