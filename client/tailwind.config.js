/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./src/**/*.{js,jsx,ts,tsx}",
  ],
  theme: {
    extend: {
      colors: {
        'ourgray': "#EEEEEE",
        'ourblue': "#34B3F1",
        'ourmedpurp': "#D16FEB",
        // 'ourorange': "#F15412",
        'ourdblue': "#2F374B",
        'ourblack': "#171717",
        'subtext': "#686868",
        'customLight': '#D772EA',
        'customDark': '#9356FB',
        'btn-right': '#D772EA',
        'btn-left': '#9356FB'
      },
      fontFamily: {
        ourfont: ["Poppins", "serif"], 
      },
      boxShadow: {
        "main-sd": "1px 1px 7px 2px rgba(0, 0, 0, 0.25)",
        "ourshad": "1px 1px 20px rgba(0, 0, 0, 0.2)",
        "boxshad": "0 5px 15px rgb(0, 0, 0, 0.07)",
      },
      container: {
        center: true,
      },
    },
  },
  plugins: [],
}
