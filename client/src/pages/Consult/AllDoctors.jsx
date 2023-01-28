import React, { useEffect, useState } from "react";
import Navbar from "../../components/Navbar";
import DoctorItem from "./DoctorItem";

const AllDoctors = () => {
  const [loading, setLoading] = useState(true);
  const [doctors, setDoctors] = useState([]);

  useEffect(() => {
    const getDoctors = async () => {
      const response = await fetch("http://localhost:3001/fetch-doctors", {
        method: "GET",
        headers: {
          "Content-Type": "application/json",
        },
      });
      const json = await response.json();
      console.log(json);
      setDoctors(json);
      setLoading(false);
    };
    getDoctors();
  }, []);

  return (
    <div>
      <Navbar />
      <div className="m-7 mt-20 ">
        <div className="flex justify-center my-4">
          <div className="text-3xl font-bold overflow-hidden">Meet our Doctors!</div>
        </div>
        <div className="grid grid-cols-3">
          {doctors.map((doctor) => {
            return (
              <DoctorItem
                key={doctor._id}
                name={doctor.name}
                email={doctor.email}
                location={doctor.location}
                qualification={doctor.qualification}
                specialization={doctor.specialization}
              />
            );
          })}
        </div>
      </div>
    </div>
  );
};

export default AllDoctors;
