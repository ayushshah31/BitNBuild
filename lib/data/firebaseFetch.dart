import 'dart:collection';

import 'package:firebase_database/firebase_database.dart';

class FirebaseFetch{
  final databaseRef = FirebaseDatabase.instance.ref();
  
  Future getAppointments(String doctor) async{
    print("Function called");
    late final appointments;
    try {
      appointments = (await databaseRef.child("doctors")
          .child(doctor)
          .child("appointments")
          .once()).snapshot.value;
    } catch(e){
      print(e);
    }
    print(appointments.runtimeType);
    print("appt: " + appointments.toString());
    print(appointments['accepted']);
    return appointments;
  }

  Future getUserAppointment(String user) async{
    print("Function get called");
    late final appointments;
    try {
      appointments = (await databaseRef.child("users")
          .child(user)
          .child("appointments")
          .once()).snapshot.value;
    } catch(e){
      print(e);
    }
    print(appointments.runtimeType);
    print("appt: " + appointments.toString());
    return appointments;
  }
}