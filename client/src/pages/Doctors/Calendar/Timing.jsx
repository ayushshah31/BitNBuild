export default function Timing() {
    const arr = [...Array(24).keys()];
    return (
      <div>
        <div className="timing"></div>
        {arr.map((ele) => {
          if (ele < 10) {
            return (
              <div
                key={ele}
                className="timing font-bold text-gray-400"
              >{`0${ele}:30 AM`}</div>
            );
          } else {
            return (
              <div
                key={ele}
                className="timing font-bold text-gray-400"
              >{`${ele}:30 AM`}</div>
            );
          }
        })}
      </div>
    );
  }
  