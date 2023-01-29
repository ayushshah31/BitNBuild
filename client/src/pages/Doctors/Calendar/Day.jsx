import { useEffect, useState } from "react";

export default function Day({ date, schedule }) {
  var x;
  const arr = [...Array(23).keys()];
  const colors = ["#D7D7F3", "#FFD6C4", "#C8EBDC"];
  const hours = {
    "09:30": null,
    "10:30": null,
    "11:30": null,
    "12:30": null,
    "01:30": null
  };
  const [events, setEvents] = useState([]);
  const [h, setH] = useState(hours);
  useEffect(() => {}, [h]);
  useEffect(() => {
    schedule[1] &&
      schedule.forEach((each) => {
        if (each.date === date) {
          setEvents((prev) => [...prev, each]);
        }
      });
  }, [schedule, date]);
  useEffect(() => {
    events[0] &&
      events.forEach((ele) => {
        var time = ele.start;
        arr.forEach((num) => {
          if (num < 10) {
            if (time.slice(0, 2) === `0${num}`) {
              x = { [`0${num}:30`]: ele };
            }
          } else {
            if (time.slice(0, 2) === `${num}`) {
              x = { [`${num}:30`]: ele };
            }
          }
        });
        if (!h[time]) {
          console.log("yes");
          setH((prev) => ({ ...prev, ...x }));
        } else {
          console.log("no");
        }
      });
  }, [events]);
  return (
    <div>
      <div
        style={{ backgroundColor: "white" }}
        className="hour border-2 rounded"
      ></div>
      {arr.map((ele) => {
        let random = Math.floor(Math.random() * colors.length);
        let r = ele < 10 ? `0${ele}:30` : `${ele}:30`;
        return (
          <div key={ele} className="hour border-2 rounded bg-white">
            <div
              style={
                h[r] != null
                  ? { backgroundColor: colors[random] }
                  : { backgroundColor: "none" }
              }
              className={`text-left p-3 h-30 rounded-lg ${
                h[r] != null && "shadow-xl"
              } flex flex-col justify-evenly`}
            >
              <p className="m-0 font-bold">{h[r] && h[r].title}</p>
              <p className="m-0 text-sm">
                {h[r] &&
                  h[r].start +
                    ` - ` +
                    h[r].end +
                    `${h[r].start > "12" ? " PM" : " AM"}`}
              </p>
            </div>
          </div>
        );
      })}
    </div>
  );
}
