import React from "react";
import { useDispatch, useSelector } from 'react-redux';
import { useNavigate } from 'react-router-dom';
import { setLogout } from '../state/authSlice';

export default function Navbar() {
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
                                setTimeout(() => {
                                    window.location.reload(); 
                                }, 500);
                            }} 
                            className="text-white bg-btn-left hover:bg-btn-right font-medium rounded-lg text-sm px-4 py-2 mx-5">
                                Log Out
                            </button>
                        </div>
                    )}
                    { !user && (
                        <div className="flex items-center lg:order-2">
                            <button onClick={() => navigate('/login')} className="text-white bg-btn-left hover:bg-btn-right font-medium rounded-lg text-sm px-4 py-2 mx-5">Log In</button>
                            <button onClick={() => navigate('/register')} className="text-white bg-btn-left hover:bg-btn-right font-medium rounded-lg text-sm px-4 py-2 mx-5">Sign Up</button>
                        </div>
                    )}
                    <div className="items-center justify-between hidden w-full lg:flex lg:w-auto lg:order-1" id="mobile-menu-2">
                        <ul className="flex flex-col mt-4 font-medium lg:flex-row lg:mt-0 ml-[10rem]">
                            <li>
                                <a href="/consult" className="block py-2 pl-3 pr-4 text-white hover:text-customLight">Consult</a>
                            </li>
                            <li>
                                <a href="/book-lab-test" className="block py-2 pl-3 pr-4 text-white hover:text-customLight">Book Lab Test</a>
                            </li>
                            <li>
                                <a href="/find-medicine" className="block py-2 pl-3 pr-4 text-white hover:text-customLight">Find Medicine</a>
                            </li>
                            <li>
                                <a href="/take-survey" className="block py-2 pl-3 pr-4 text-white hover:text-customLight">Take Survey</a>
                            </li>
                            <li>
                                <a href="/buy-products" className="block py-2 pl-3 pr-4 text-white hover:text-customLight">Buy Products</a>
                            </li>
                            <li>
                                <a href="/articles" className="block py-2 pl-3 pr-4 text-white hover:text-customLight">Articles</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        </nav>
    );
}