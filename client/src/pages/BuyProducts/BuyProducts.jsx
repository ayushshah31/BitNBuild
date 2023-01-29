import React from "react";
import Navbar from "../../components/Navbar";

const BuyProducts = () => {
  return (
    <div>
      <Navbar />
      <div class="rounded overflow-hidden shadow-lg m-10 mt-24 grid grid-cols-3 gap-5">
        <div>
          <img
            class="w-full"
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
          <div class="px-6 pt-4 pb-2">
            <span class="inline-block bg-gray-200 rounded-full px-3 py-1 text-sm font-semibold text-gray-700 mr-2 mb-2">
              ₹339{" "}
            </span>
            <span class="inline-block bg-gray-200 rounded-full px-3 py-1 text-sm font-semibold text-gray-700 mr-2 mb-2">
              Buy Now
            </span>
          </div>
        </div>
        <div>
          <img
            class="w-[75%]"
            src="https://m.media-amazon.com/images/I/71yvfec512L._AC_UL480_FMwebp_QL65_.jpg"
            alt="Healthy"
          />
          <div class="px-6 py-4">
            <div class="font-bold text-xl mb-2">Giloy Neem Tulsi Juice</div>
            <p class="text-gray-700 text-base">
            Dabur Giloy Neem Tulsi Juice: Benefit of 3-in-1 Immunity Boosters with the power of all 3
            </p>
          </div>
          <div class="px-6 pt-4 pb-2">
            <span class="inline-block bg-gray-200 rounded-full px-3 py-1 text-sm font-semibold text-gray-700 mr-2 mb-2">
              ₹213{" "}
            </span>
            <span class="inline-block bg-gray-200 rounded-full px-3 py-1 text-sm font-semibold text-gray-700 mr-2 mb-2">
              Buy Now
            </span>
          </div>
        </div>
        <div>
          <img
            class="w-full"
            src="https://m.media-amazon.com/images/I/81Ie0ch4tjL._AC_UL480_FMwebp_QL65_.jpg"
            alt="Healthy"
          />
          <div class="px-6 py-4">
            <div class="font-bold text-xl mb-2">Ayurvedic Capsules</div>
            <p class="text-gray-700 text-base">
            Dabur Shilajit Gold : 100 % Ayurvedic Capsules for Strength , Stamina 
            </p>
          </div>
          <div class="px-6 pt-4 pb-2">
            <span class="inline-block bg-gray-200 rounded-full px-3 py-1 text-sm font-semibold text-gray-700 mr-2 mb-2">
              ₹365{" "}
            </span>
            <span class="inline-block bg-gray-200 rounded-full px-3 py-1 text-sm font-semibold text-gray-700 mr-2 mb-2">
              Buy Now
            </span>
          </div>
        </div>
      </div>
    </div>
  );
};

export default BuyProducts;
