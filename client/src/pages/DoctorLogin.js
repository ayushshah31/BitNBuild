import React from "react";
import { useNavigate } from "react-router-dom";
import authImgMain from "../images/AuthImageMain.svg";
import authbottom from "../images/AuthBottom.svg"
import clouds from "../images/Clouds.svg"
import injection from "../images/Injection.svg"
import plus from "../images/PlusSignsMirror.svg"

const DoctorLogin = () => {

    let navigate = useNavigate()
    const getIn = () => {
        navigate('/about')
    }  

  return (
    <div className="h-screen formClass overflow-y-hidden">
      <div className="flex">
        <div className="w-1/2 overflow-y-hidden">
          <img src={authImgMain} alt="alternate" className="w-full h-3/4 m-8" />
        </div>
        <div className="flex-1 h-screen w-50% justify-center content-center ml-12 z-10">
          <div className="flex flex-col w-full h-screen justify-center content-center">
            <div className="ml-4 w-[500px] bg-white h-[550px] my-auto rounded-3xl shadow-ourshad justify-center content-center text-left overflow-y-hidden">
              <div className="p-10 ml-5">
                <p className="font-ourfont font-bold text-3xl overflow-y-hidden">Log In</p>
                <p className="mt-3 font-ourfont font-normal text-sm text-subtext">New to our site?</p>
                <span className="font-ourfont font-normal text-sm text-subtext">You can </span>
                {/* {isReg ?  */}
                <button className="font-ourfont font-semibold text-sm text-ourmedpurp">Register Here!</button>
                {/* <button onClick={handleClick} className="font-ourfont font-normal text-sm text-ourmedpurp">{ifnot}</button>} */}
                <br/>
                <form className="w-full max-w-sm mt-5">
                <p className="font-medium">Email</p>
                  <div className="flex items-center border-b-2 border-ourmedpurp ">
                    <input className="appearance-none bg-transparent border-none w-full text-subtext mr-3 py-1 leading-tight focus:outline-none" type="text" placeholder="Enter your email address" name = "email" />                      
                  </div>
                  {/* <div className="text-[12px] text-red-600">{used}</div> */}
                <p className="font-medium mt-5">Password</p>
                  <div className="flex items-center border-b-2 border-ourmedpurp ">
                    <input className="appearance-none bg-transparent border-none w-full text-subtext mr-3 py-1 leading-tight focus:outline-none" type="password" placeholder="Enter your password" name="password"/>                      
                  </div>
                <p className="font-medium mt-5">Number</p>
                  <div className="flex items-center border-b-2 border-ourmedpurp ">
                    <input className="appearance-none bg-transparent border-none w-full text-subtext mr-3 py-1 leading-tight focus:outline-none" type="tel" placeholder="Enter your phone number" name="phone"/>                      
                  </div>
                  <div className="content-center justify-center mt-11 ml-8">
                    <button className="flex-shrink-0 bg-gradient-to-r from-btn-left to-btn-right text-sm text-white py-3 px-6 rounded-3xl w-11/12 font-medium" type="button" onClick={getIn}>
                    Sign In</button>
                  </div>
                </form> 
                <div className="mt-12">
                <a href="/expertauth" className="font-ourfont text-sm text-subtext font-medium ">Join as an Expert</a>
              </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <img src={authbottom} alt="bottom" className="absolute bottom-0"/>
      <img src={clouds} alt="bottom" className="absolute z-0 w-[850px] h-[340px] right-[30px] top-[20px] "/>
      <img src={injection} alt="bottom" className="absolute z-10 h-[315px] right-[485px] top-2 "/>
      <img src={plus} alt="bottom" className="absolute z-10 h-[200px] right-[180px] top-9"/>
    </div>
  )
}

export default DoctorLogin