import React from "react";
import { useDispatch, useSelector } from 'react-redux';
import { useNavigate } from 'react-router-dom';
import { setLogout } from '../../state/authSlice';

export default function DoctorsNavbar() {
    const dispatch = useDispatch();
    const navigate = useNavigate();
    const user = useSelector((state) => state.user);

    return (
        <nav className="font-ourfont mb-14">
            <header className="fixed w-full">
            <nav className=" border-gray-200 py-2.5 bg-gray-900">
                <div className="flex flex-wrap items-center justify-between max-w-screen-xl px-4 mx-auto">
                    <a href="/" className="flex items-center">
                        <span className="self-center text-xl font-semibold whitespace-nowrap text-white hover:text-customLight absolute left-10">Health at Home</span>
                    </a>
                    { user && (
                        <div className="flex items-center lg:order-2">
                            <button onClick={() => { 
                                dispatch(setLogout());
                                navigate('/doctor/login');
                            }}
                            className="text-white bg-btn-left hover:bg-btn-right font-medium rounded-lg text-sm px-4 py-2 mx-5">
                                Log Out
                            </button>
                        </div>
                    )}
                    { !user && (
                        <div className="flex items-center lg:order-2">
                            <button onClick={() => navigate('/patient/login')} className="text-white bg-btn-left hover:bg-btn-right font-medium rounded-lg text-sm px-4 py-2 mx-5">Log In</button>
                            <button onClick={() => navigate('/patient/register')} className="text-white bg-btn-left hover:bg-btn-right font-medium rounded-lg text-sm px-4 py-2 mx-5">Sign Up</button>
                        </div>
                    )}
                </div>
            </nav>
        </header>
        </nav>
    );
}