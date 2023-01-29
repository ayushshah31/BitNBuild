import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:firebase_database/firebase_database.dart';

class AppointmentDr extends StatefulWidget {
  final String name;
  final Color color1;
  final String image1;
  final String doctorName;
  final Function() onPress;
  final int index;
  bool showCard;

  AppointmentDr({
    required this.name,
    required this.color1,
    required this.image1,
    required this.doctorName,
    required this.onPress,
    required this.index,
    required this.showCard
  });

  @override
  State<AppointmentDr> createState() => _AppointmentDrState();
}

class _AppointmentDrState extends State<AppointmentDr> {
  bool isAccepted = false;
  final databaseRef = FirebaseDatabase.instance.ref();

  @override
  Widget build(BuildContext context) {
    return widget.showCard? Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 325,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: widget.color1,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Container(
                    width: 80,
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(widget.image1)),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  widget.name,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                      child: MaterialButton(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          color: Colors.blue,
                          onPressed: (){
                            setState(() {
                              isAccepted = true;
                            });
                            // print("hello0000");
                          },
                          child: Text("Accept",style: TextStyle(color: Colors.white),)),
                    ),
                    isAccepted? Padding(
                      padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                      child: MaterialButton(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          color: Colors.blue,
                          onPressed: () {
                            DatePicker.showDateTimePicker(context,
                                showTitleActions: true,
                                minTime: DateTime.now(),
                                maxTime: DateTime(2023, 12, 31),
                                onChanged: (date) {
                                  print('change $date');
                                },
                                onConfirm: (date) async{
                                  // print('confirm $date');
                                  print(date.hour);
                                  print(widget.doctorName);
                                  try {
                                    var getLength = (await databaseRef.child(
                                        "doctors").child(widget.doctorName)
                                        .child("appointments").child("accepted")
                                        .once()).snapshot.value as List;
                                    print(getLength.length);
                                    await databaseRef.child("doctors").child(
                                        widget.doctorName).child("appointments")
                                        .child("accepted").child(
                                        getLength.length.toString()).child(
                                        "name")
                                        .set(widget.name);
                                    await databaseRef.child("doctors").child(
                                        widget.doctorName).child("appointments")
                                        .child("accepted").child(
                                        getLength.length.toString()).child(
                                        "date")
                                        .set(date.day);
                                    await databaseRef.child("doctors").child(
                                        widget.doctorName).child("appointments")
                                        .child("accepted").child(
                                        getLength.length.toString()).child(
                                        "time")
                                        .set("${date.hour}");
                                  } catch(e){
                                    await databaseRef.child("doctors").child(
                                        widget.doctorName).child("appointments")
                                        .child("accepted").child("0").child(
                                        "name")
                                        .set(widget.name);
                                    await databaseRef.child("doctors").child(
                                        widget.doctorName).child("appointments")
                                        .child("accepted").child("0").child(
                                        "date")
                                        .set(date.day);
                                    await databaseRef.child("doctors").child(
                                        widget.doctorName).child("appointments")
                                        .child("accepted").child("0").child(
                                        "time")
                                        .set("${date.hour}");
                                  }
                                  try {
                                    var len = (await databaseRef.child("users")
                                        .child(widget.name).child(
                                        "appointments")
                                        .once()).snapshot.value as List;
                                    await databaseRef.child("users").child(
                                        widget.name).child("appointments")
                                        .child(len.length.toString()).child("name")
                                        .set(widget.doctorName);
                                    await databaseRef.child("users").child(
                                        widget.name).child("appointments")
                                        .child(len.length.toString()).child("time")
                                        .set(date.hour);
                                  } catch(e){
                                    await databaseRef.child("users").child(
                                        widget.name).child("appointments")
                                        .child("0").child("name")
                                        .set(widget.doctorName);
                                    await databaseRef.child("users").child(
                                        widget.name).child("appointments")
                                        .child("0").child("time")
                                        .set(date.hour);
                                  }
                                  print(widget.index);
                                  await databaseRef.child("doctors").child(widget.doctorName).child("appointments").child("pending").child(widget.index.toString()).remove();
                                  // widget.onPress();
                                  setState(() {
                                    widget.showCard = false;
                                  });
                                },
                                currentTime: DateTime.now(), locale: LocaleType.en);
                          },
                          child: Text('Pick Date',style: TextStyle(color: Colors.white))
                      ),
                    )
                        :Text("")
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ): Text("");
  }
}
