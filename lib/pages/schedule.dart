import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../data/firebaseFetch.dart';
import '../widgets/date_card.dart';
import '../widgets/schedule_card.dart';

class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  State<Schedule> createState() => _ScheduleState();
}

class DataRequiredForBuild {
  List appointments;
  DataRequiredForBuild({required this.appointments});
}

class _ScheduleState extends State<Schedule> {

  late Future<DataRequiredForBuild> _dataRequiredForBuild;

  Future<DataRequiredForBuild> _fetchData() async{
    User? mFirebaseUser=FirebaseAuth.instance.currentUser;
    // print(mFirebaseUser!.displayName);
    final username = mFirebaseUser!.email.toString().split("@")[0];
    FirebaseFetch _fetchData = FirebaseFetch();
    final appt = (await _fetchData.getUserAppointment(username));
    return DataRequiredForBuild(appointments: appt);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _dataRequiredForBuild = _fetchData();
  }

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
          FutureBuilder<DataRequiredForBuild>(
            future: _dataRequiredForBuild,
              builder: (context,snapshot){
                return snapshot.hasData? Container(
                  height: 475,
                  child: ListView.builder(
                    itemCount: snapshot.data!.appointments.length,
                      itemBuilder: (context,i){
                        return  Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 25.0),
                              child: Row(
                                children: [
                                  Text('${snapshot.data!.appointments[i]['time']}.00pm '),
                                  Text(" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -",style: TextStyle(color: Color(0xFF839fed)),)
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ScheduleCard(
                              color1: Color(0xFF1C6BA4),
                              doctorName: "Dr.${snapshot.data!.appointments[i]['name']}",
                              doctype: 'Cardiologist',
                              image1: 'lib/images/doc1.png',
                              time: "12:00",
                              onpress: () async{
                                String url = "https://meet.jit.si/MathematicalDiversitiesTranslateInstead";
                                Uri uri = Uri.parse(url);
                                await launchUrl(uri, mode: LaunchMode.externalApplication);
                              },
                            ),
                            SizedBox(height: 10),
                          ],
                        );
                      }
                  ),
                ): CircularProgressIndicator();
              }
          ),
        ],
      )),
    );
  }
}
