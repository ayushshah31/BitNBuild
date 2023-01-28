import React from "react";
import { useNavigate } from "react-router-dom";

const Doctors = () => {
  const navigate = useNavigate();

  return (
    <div className="flex m-5 p-5 justify-center content-center align-middle items-center">
      <div className="w-full">
        <div className="flex items-center">
          <div className="hfull w-1/3 m-5 p-5">
            <div className="shadow-ourshad rounded-md">
              <div className="p-5">
                <h1>Doctors</h1>
                <button
                  onClick={() => navigate("/room")}
                  className="text-white bg-btn-left hover:bg-btn-right font-medium rounded-lg text-sm px-4 py-2 mx-5"
                >
                  Schedule An Appointment
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Doctors;
