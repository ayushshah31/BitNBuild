import React, {useState} from "react";
import Navbar from "../../components/Navbar";
import { ethers } from "ethers";

const BuyProducts = () => {
  const [amount, setAmount] = useState(0.01);
  const [destinationAddress, setDestinationAddress] = useState(
    "0xeC42975428f25a65e4e5390C74E54ac2b1708a99"
  );
  const startPayment = async (event) => {
    console.log(amount, destinationAddress);

    event.preventDefault();

    try {
      if (!window.ethereum) {
        throw new Error("No crypto wallet found. Please install it.");
      }
      await window.ethereum.send("eth_requestAccounts");
      const provider = new ethers.providers.Web3Provider(window.ethereum);
      const signer = provider.getSigner();
      ethers.utils.getAddress(destinationAddress);
      const transactionResponse = await signer.sendTransaction({
        to: destinationAddress,
        value: ethers.utils.parseEther(amount.toString()),
      });
      console.log({ transactionResponse });
    } catch (error) {
      console.log({ error });
    }
  };

  return (
    <div>
      <Navbar />
      <div class="rounded overflow-hidden m-10 mt-24 grid grid-cols-3 gap-5">
        <div className="m-3 shadow-ourshad">
          <img
            class="w-full m-3"
            src="https://m.media-amazon.com/images/I/71tH6y4K-SL._SX679_.jpg"
            alt="Healthy"
          />
          <div class="px-6 py-4">
            <div class="font-bold text-xl mb-2">Chyawanprash</div>
            <p class="text-gray-700 text-base">
              Dabur Chyawanprash – 950g, 2X/3X Immunity, helps build Strength
              and for Stamina
            </p>
          </div>
          <div class="flex px-6 pt-4 pb-2">
            <span class="inline-block bg-gray-200 rounded-full px-3 py-1 text-sm font-semibold text-gray-700 mr-2 mb-2">
              ₹339
            </span>
            <button onClick={startPayment} class="inline-block rounded-md font-ourfont font-semibold text-sm text-white bg-customDark px-2">
              Buy Now
            </button>
          </div>
        </div>
        <div className="m-3 shadow-ourshad">
          <img
            class="w-[75%] m-3"
            src="https://m.media-amazon.com/images/I/71yvfec512L._AC_UL480_FMwebp_QL65_.jpg"
            alt="Healthy"
          />
          <div class="px-6 py-4">
            <div class="font-bold text-xl mb-2">Giloy Neem Tulsi Juice</div>
            <p class="text-gray-700 text-base">
            Dabur Giloy Neem Tulsi Juice: Benefit of 3-in-1 Immunity Boosters with the power of all 3
            </p>
          </div>
          <div class="flex px-6 pt-4 pb-2">
            <span class="inline-block bg-gray-200 rounded-full px-3 py-1 text-sm font-semibold text-gray-700 mr-2 mb-2">
              ₹213
            </span>
            <button onClick={startPayment} class="inline-block rounded-md font-ourfont font-semibold text-sm text-white bg-customDark px-2">
              Buy Now
            </button>
          </div>
        </div>
        <div className="m-3 shadow-ourshad">
          <img
            class="w-full m-3"
            src="https://m.media-amazon.com/images/I/81Ie0ch4tjL._AC_UL480_FMwebp_QL65_.jpg"
            alt="Healthy"
          />
          <div class="px-6 py-4">
            <div class="font-bold text-xl mb-2">Ayurvedic Capsules</div>
            <p class="text-gray-700 text-base">
            Dabur Shilajit Gold : 100 % Ayurvedic Capsules for Strength , Stamina 
            </p>
          </div>
          <div class="flex px-6 pt-4 pb-2">
            <span class="inline-block bg-gray-200 rounded-full px-3 py-1 text-sm font-semibold text-gray-700 mr-2 mb-2">
              ₹365
            </span>
            <button onClick={startPayment} class="inline-block rounded-md font-ourfont font-semibold text-sm text-white bg-customDark px-2">
              Buy Now
            </button>
          </div>
        </div>
      </div>
    </div>
  );
};

export default BuyProducts;
