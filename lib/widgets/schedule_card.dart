import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  final String doctorName;
  final String? time;
  final Color color1;
  final String image1;
  final String doctype;
  final Function() onpress;

  ScheduleCard({
    required this.doctorName,
    required this.color1,
    this.time,
    required this.image1,
    required this.doctype,
    required this.onpress
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 325,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: color1,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Container(
                    width: 80,
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(image1)),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      time != null ?
                      Text(
                        time!,
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w200),
                      ) : Text(""),
                      Text(
                        doctorName,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600),
                      ),
                      Text(doctype,
                          style: TextStyle(
                              color: Colors.white60,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w100)),
                    ],
                  ),
                ),
                Container(
                  height: 30,
                  margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                  // padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      color: Colors.blue,
                      onPressed: onpress,
                      child: Text("Meet")),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
