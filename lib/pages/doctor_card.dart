// ignore: unused_import
import 'dart:ffi';

import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final int date;
  final String doctorName;
  final String day;
  final int time;
  final Color color1;
  final Color color2;
  final String disease;

  DoctorCard(
      {required this.doctorName,
      required this.color1,
      required this.date,
      required this.day,
      required this.time,
      required this.color2,
      required this.disease});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 17.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 300,
            height: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: color1,
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Container(
                    width: 80,
                    height: 100,
                    decoration: BoxDecoration(
                        color: color2, borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        children: [
                          Text(
                            date.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600),
                          ),
                          Text(day,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400))
                        ],
                      ),
                    ),
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
                      Text(disease,
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
