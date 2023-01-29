import Day from "./Day";
import Timing from "./Timing";

export default function Week({ schedule }) {
  const arr = [...Array(7).keys()];
  const d = {
    0: "Sun",
    1: "Mon",
    2: "Tue",
    3: "Wed",
    4: "Thu",
    5: "Fri",
    6: "Sat"
  };
  // const [day1, setDay1] = useState();
  // useEffect(() => {
  //   schedule[0] && schedule.forEach((each) => {});
  // }, [schedule]);
  return (
    <div className="week shadow-2xl flex mt-0 mx-7 rounded-2xl bg-gray-50">
      <div>
        <div
          className="sticky top-0 head bg-gray-50 mt-1"
          style={{ height: "74px" }}
        ></div>
        <Timing />
      </div>
      {arr.map((ele) => {
        return (
          <div key={ele}>
            <div className="sticky top-0 my-1 head bg-gray-50 py-3">
              <div>
                <h3 className="font-bold">{d[ele]}</h3>
                <h3 className="font-bold">{19 + ele}</h3>
              </div>
            </div>
            <Day date={`2022-06-${19 + ele}`} schedule={schedule} />
          </div>
        );
      })}
    </div>
  );
}
