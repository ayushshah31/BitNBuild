import React from "react";

export default function Navbar() {
  return (
    <nav className="font-ourfont">
        <header className="fixed w-full">
        <nav className=" border-gray-200 py-2.5 bg-gray-900">
            <div className="flex flex-wrap items-center justify-between max-w-screen-xl px-4 mx-auto">
                <a href="/" className="flex items-center">
                    <span className="self-center text-xl font-semibold whitespace-nowrap text-white hover:text-customLight absolute left-10">Health at Home</span>
                </a>
                <div className="flex items-center lg:order-2">
                    <button className="text-white bg-btn-left hover:bg-btn-right font-medium rounded-lg text-sm px-4 py-2 mx-5">Log In</button>
                    <button className="text-white bg-btn-left hover:bg-btn-right font-medium rounded-lg text-sm px-4 py-2 mx-5">Sign Up</button>
                </div>
                <div className="items-center justify-between hidden w-full lg:flex lg:w-auto lg:order-1" id="mobile-menu-2">
                    <ul className="flex flex-col mt-4 font-medium lg:flex-row lg:mt-0 ml-[10rem]">
                        <li>
                            <a href="/#" className="block py-2 pl-3 pr-4 text-white hover:text-customLight">Home</a>
                        </li>
                        <li>
                            <a href="/#" className="block py-2 pl-3 pr-4 text-white hover:text-customLight">Consult</a>
                        </li>
                        <li>
                            <a href="/#" className="block py-2 pl-3 pr-4 text-white hover:text-customLight">Book Lab Test</a>
                        </li>
                        <li>
                            <a href="/#" className="block py-2 pl-3 pr-4 text-white hover:text-customLight">Find Medicine</a>
                        </li>
                        <li>
                            <a href="/#" className="block py-2 pl-3 pr-4 text-white hover:text-customLight">Take Survey</a>
                        </li>
                        <li>
                            <a href="/#" className="block py-2 pl-3 pr-4 text-white hover:text-customLight">Buy Products</a>
                        </li>
                        <li>
                            <a href="/#" className="block py-2 pl-3 pr-4 text-white hover:text-customLight">Articles</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    </nav>
  );
}