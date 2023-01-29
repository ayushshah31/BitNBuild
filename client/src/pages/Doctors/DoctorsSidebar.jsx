import React from "react";
import "./Sidebar.css";
import { Link } from "react-router-dom";
// import { IconContext } from "react-icons";
// import {GrLogout} from 'react-icons/gr'
// import { HiLogout } from "react-icons/hi";
import {
  AiOutlineFundProjectionScreen,
  // AiOutlineProject,
} from "react-icons/ai";
// import { BsQuestionSquareFill, BsFillQuestionCircleFill } from "react-icons/bs";
// import { RiQuestionAnswerFill } from "react-icons/ri";
import { CgProfile } from "react-icons/cg";
import DoctorsNavbar from "./DoctorsNavbar";
import { useSelector } from 'react-redux';

const DoctorsSidebar = () => {
  const user = useSelector((state) => state.user);
  // let navigate = useNavigate();
  // const logout = () => {
  //   alert("You have logged out");
  //   localStorage.setItem("token", "");
  //   navigate("/");
  // };

  return (
    <div>
      <DoctorsNavbar/>
      <div className="w-1/5 h-screen bg-ourdblue text-left fixed overflow-hidden">
        <h1 className=" text-white pb-10 px-5 p-8 text-3xl">{user.name}</h1>
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
