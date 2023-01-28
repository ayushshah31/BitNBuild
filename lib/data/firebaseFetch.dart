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
}