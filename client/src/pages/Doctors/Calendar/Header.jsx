export default function Header() {
    return (
      <div className="flex justify-between align-center mx-7 my-6 bg-gray-50 p-4 rounded-2xl">
        <h1 className="font-bold text-5xl ">Timeline</h1>
        <div className="flex justify-evenly align-center w-2/5">
          <select
            id="drop"
            className="border-2 rounded-xl text-lg border-purple-200 px-5 hover:bg-purple-100 hover:cursor-pointer"
          >
            <option value="week">Week</option>
            <option value="month">Month</option>
            <option value="day">Day</option>
            <option value="year">Year</option>
          </select>
          {/* e5e7eb */}
          <p className="text-xl mt-3 mx-4">19 - 25 June, 2022</p>
          <button className="border-2 text-lg border-purple-200 px-5 py-2 rounded hover:bg-purple-100">
            {"<"}
          </button>
          <button className="border-2 text-lg border-purple-200 px-5 py-2 -ml-4 rounded hover:bg-purple-100">
            {">"}
          </button>
        </div>
      </div>
    );
  }
  