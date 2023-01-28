import 'package:flutter/material.dart';

import '../widgets/date_card.dart';
import '../widgets/schedule_card.dart';

class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Text(
                  'Schedule',
                  style: TextStyle(
                      fontSize: 27,
                      color: Color(0xFF0E1012),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500),
                ),
                Expanded(child: Container()),
                IconButton(onPressed: () {}, icon: Icon(Icons.calendar_month))
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 110,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  DateCard(
                    date: '29',
                    day: 'Sun',
                    color: Color(0xFF1C6BA4),
                    textcolor: Color(0xFFFFFFFF),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  DateCard(
                    date: '30',
                    day: 'Mon',
                    color: Color(0xFFDCEDF9),
                    textcolor: Color(0xFF253141),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  DateCard(
                    date: '31',
                    day: 'Tue',
                    color: Color(0xFFDCEDF9),
                    textcolor: Color(0xFF253141),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  DateCard(
                    date: '01',
                    day: 'Wed',
                    color: Color(0xFFDCEDF9),
                    textcolor: Color(0xFF253141),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  DateCard(
                    date: '02',
                    day: 'Thur',
                    color: Color(0xFFDCEDF9),
                    textcolor: Color(0xFF253141),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  DateCard(
                    date: '03',
                    day: 'Fri',
                    color: Color(0xFFDCEDF9),
                    textcolor: Color(0xFF253141),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  DateCard(
                    date: '04',
                    day: 'Sat',
                    color: Color(0xFFDCEDF9),
                    textcolor: Color(0xFF253141),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Text('12.00pm'),
                for (int i = 0; i < 99; i++)
                  i.isEven
                      ? Container(
                          width: 3,
                          height: 1,
                          decoration: BoxDecoration(
                              color: Color(0xFF839fed),
                              borderRadius: BorderRadius.circular(8)),
                        )
                      : Container(height: 1, width: 3, color: Colors.white)
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              ScheduleCard(
                color1: Color(0xFF1C6BA4),
                doctorName: 'Dr.Mim Akhter',
                doctype: 'Cardiologist',
                image1: 'lib/images/doc1.png',
                time: 1200,
              ),
            ],
          )
        ],
      )),
    );
  }
}
