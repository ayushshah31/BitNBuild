import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  final String doctorName;
  final int time;
  final Color color1;
  final String image1;
  final String doctype;

  ScheduleCard({
    required this.doctorName,
    required this.color1,
    required this.time,
    required this.image1,
    required this.doctype,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 350,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: color1,
            ),
            child: Row(
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
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        time.toString(),
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w200),
                      ),
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
                Padding(
                  padding: const EdgeInsets.only(right: 12.0, top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('lib/images/Vector2.png'))),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
