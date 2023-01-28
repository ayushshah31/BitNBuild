import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:health_app/widgets/appointmentDr.dart';
import 'package:url_launcher/url_launcher.dart';
import '../data/firebaseFetch.dart';
import '../widgets/date_card.dart';
import '../widgets/schedule_card.dart';

class Bookings extends StatefulWidget {
  const Bookings({Key? key}) : super(key: key);

  @override
  State<Bookings> createState() => _BookingsState();
}

class DataRequiredForBuild {
  List pendingAppt;
  DataRequiredForBuild({required this.pendingAppt});
}

class _BookingsState extends State<Bookings> {

  late Future<DataRequiredForBuild> _dataRequiredForBuild;
  final user = FirebaseAuth.instance.currentUser;
  String? docName = "";

  Future<DataRequiredForBuild> _fetchData() async{
    User? mFirebaseUser=FirebaseAuth.instance.currentUser;
    // print(mFirebaseUser!.displayName);
    final username = mFirebaseUser!.email.toString().split("@")[0];
    FirebaseFetch _fetchData = FirebaseFetch();
    final appt = (await _fetchData.getAppointments(username))["pending"];
    return DataRequiredForBuild(pendingAppt: appt);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _dataRequiredForBuild = _fetchData();
    docName = user!.email!.split("@")[0];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
          child: ClipRect(
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
                      // print(snapshot.data!.appointments);
                      // return ScheduleCard(
                      //     doctorName: snapshot.data!.appointments,
                      //     color1: Colors.blue,
                      //     time: "12:00",
                      //     image1: 'lib/images/doc1.png',
                      //     doctype: ""
                      // );
                      return snapshot.hasData?
                      Column(
                        children: [
                          Container(
                            height: 480,
                            child: ListView.builder(
                                itemCount: snapshot.data!.pendingAppt.length,
                                itemBuilder: (context,i){
                                  return Column(
                                    children: [
                                      AppointmentDr(
                                        showCard: true,
                                        doctorName: docName.toString(),
                                        color1: Color(0xFF1C6BA4),
                                        name: snapshot.data!.pendingAppt[i]['name'].toString().toUpperCase(),
                                        image1: 'lib/images/doc1.png',
                                      // time: snapshot.data!.appointments[i]['time'].toString(),
                                          index: i,
                                        onPress: (){
                                          setState(() {
                                            snapshot.data!.pendingAppt.removeAt(i);
                                          });
                                        }
                                      ),
                                      SizedBox(height: 10),
                                    ]
                                  );
                                }
                            ),
                          ),
                        ],
                      ):Padding(padding: EdgeInsets.all(100),child: CircularProgressIndicator(color: Colors.blue,backgroundColor: Colors.green,strokeWidth: 10,));
                    }
                )
              ],
            ),
          )),
    );
  }
}
