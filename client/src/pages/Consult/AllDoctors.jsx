import React, { useEffect, useState } from "react";

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

  return <div>AllDoctors</div>;
};

export default AllDoctors;
