import React from "react";
import Navbar from "../../components/Navbar";
import { useNavigate } from "react-router-dom";
import pose_1 from '../../images/pose_1.svg'
import survey from '../../images/survey.svg'
import MedicalReport from '../../images/MedicalReport.svg'

const Consult = () => {
  const navigate = useNavigate();

  return (
    <div>
      <Navbar />
      <div className="font-ourfont bg-white">
        <div className="flex mt-5 px-5 pt-4 justify-center content-center align-middle items-center">
          <div className="text-3xl overflow-hidden font-bold">Our Services</div>
        </div>
        <div className="flex justify-center content-center align-middle items-center">
          <div className="w-full">
            <div className="flex items-center">
              <div className="hfull w-2/3 mx-5 px-12 py-5">
                <div className="shadow-ourshad rounded-md">
                  <a
                    href="/doctors"
                    class="flex flex-col items-center rounded-lg shadow md:flex-row md:max-w-full hover:bg-gray-100 dark:border-gray-700 dark:bg-gray-800 dark:hover:bg-gray-700"
                  >
                    <img
                      class="object-cover w-full rounded-t-lg h-96 md:h-auto mx-10 md:w-[48 rem] md:rounded-none md:rounded-l-lg"
                      src={pose_1}
                      alt=""
                    />
                    <div class="flex flex-col justify-between p-4 pl-10 pr-12 leading-normal">
                      <h5 class="my-2 text-2xl font-bold tracking-tight dark:text-white overflow-hidden">
                        Get on an online Video Consultation
                      </h5>
                      <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">
                        You ca consult a specialist using this service where we display all the doctors registered on our site and you can got on a personal video call with the doctor of your choice.
                      </p>
                    </div>
                  </a>
                </div>
                {/* </div> */}
              </div>
            </div>
          </div>
        </div>
        <div className="flex justify-end content-end align-right items-right">
          <div className="w-full">
            <div className="flex items-right justify-end">
              <div className="hfull w-2/3 mx-5 px-7 py-5">
                <div className="shadow-ourshad rounded-md">
                  <a
                    href="/doctors"
                    class="flex flex-col items-center rounded-lg shadow md:flex-row md:max-w-full hover:bg-gray-100 dark:border-gray-700 dark:bg-gray-800 dark:hover:bg-gray-700"
                  >
                    <img
                      class="object-cover w-full rounded-t-lg h-96 md:h-auto mx-10 md:w-[48 rem] md:rounded-none md:rounded-l-lg"
                      src={survey}
                      alt=""
                    />
                    <div class="flex flex-col justify-between p-4 pl-10 pr-12 leading-normal">
                      <h5 class="my-2 text-2xl font-bold tracking-tight dark:text-white overflow-hidden">
                        Take a Survey and get yourself diagnosed.
                      </h5>
                      <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">
                        You can take short survey or test and know about the possible diseases you might be facing.
                      </p>
                    </div>
                  </a>
                </div>
                {/* </div> */}
              </div>
            </div>
          </div>
        </div>
        <div className="flex justify-center content-center align-middle items-center">
          <div className="w-full">
            <div className="flex items-center">
              <div className="hfull w-2/3 mx-5 px-7 py-5">
                <div className="shadow-ourshad rounded-md">
                  <a
                    href="/doctors"
                    class="flex flex-col items-center rounded-lg shadow md:flex-row md:max-w-full hover:bg-gray-100 dark:border-gray-700 dark:bg-gray-800 dark:hover:bg-gray-700"
                  >
                    <img
                      class="m-11 object-cover w-44 rounded-t-lg h-36 md:h-48 mx-10 md:w-[30 rem] md:rounded-none md:rounded-l-lg"
                      src={MedicalReport}
                      alt=""
                    />
                    <div class="flex flex-col justify-between p-4 pl-10 pr-12 leading-normal">
                      <h5 class="my-2 text-2xl font-bold tracking-tight dark:text-white overflow-hidden">
                        Upload your prescription and get details
                      </h5>
                      <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">
                        Upload a scanned copy of your prescription and know the details.
                      </p>
                    </div>
                  </a>
                </div>
                {/* </div> */}
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Consult;
