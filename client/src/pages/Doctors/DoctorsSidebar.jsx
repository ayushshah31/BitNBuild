import React from "react";
import "./Sidebar.css";
import { useNavigate, Link } from "react-router-dom";
import {
  AiOutlineFundProjectionScreen,
} from "react-icons/ai";
import { CgProfile } from "react-icons/cg";
import DoctorsNavbar from "./DoctorsNavbar";

const DoctorsSidebar = () => {
  let navigate = useNavigate();
  const logout = () => {
    alert("You have logged out");
    localStorage.setItem("token", "");
    navigate("/");
  };

  return (
    <div>
    <DoctorsNavbar/>
      <div className="w-1/5 h-screen bg-ourdblue text-left fixed overflow-hidden">
        <h1 className=" text-white pb-14 p-8 text-3xl">Hello Dr. Strange</h1>
        <ol className="list-none text-white">
          <Link to="/doctorlogs">
            <li className="text-lg p-3 sidebarhover font-bold">
              <div className="inline-block mx-4">
                <CgProfile size={"1.3em"} />
              </div>
              Appointment Logs
            </li>
          </Link>
          <Link to="/doctorcalendar">
            <li className="text-lg p-3 sidebarhover font-bold">
              {" "}
              <div className="inline-block mx-4">
                <AiOutlineFundProjectionScreen color="white" size={"1.3em"} />
              </div>
              Calendar
            </li>
          </Link>
        </ol>
      </div>
    </div>
  );
};

export default DoctorsSidebar;
