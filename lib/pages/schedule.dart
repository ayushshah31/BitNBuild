import 'package:flutter/material.dart';
import 'package:health_app/data/firebaseFetch.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
    final appt = (await _fetchData.getAppointments(username))["accepted"];
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
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 70,
              width: 500,
              child: ListView.builder(
                itemCount: 7,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,i){
                    return Container(
                      // height: 30,
                      width: 50,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.lightBlueAccent
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Text((i+29).toString()),
                      ),
                    );
                  }
              )
          ),
          SizedBox(height: 20),
          Text("Appointments"),
          FutureBuilder<DataRequiredForBuild>(
            future: _dataRequiredForBuild,
              builder: (context,snapshot){
              print(snapshot.data!.appointments);
                return Container(
                  height: 100,
                  child: ListView.builder(
                    itemCount: snapshot.data!.appointments.length,
                      itemBuilder: (context,i){
                        return Column(
                          children: [
                            Text(snapshot.data!.appointments[i]["time"].toString()),
                            Text(snapshot.data!.appointments[i]["name"].toString()),
                          ],
                        );
                      }
                  ),
                );
              }
          )
        ],
      ),
    );
  }
}
