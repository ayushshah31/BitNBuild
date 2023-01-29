import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class AppointmentUser extends StatefulWidget {
  String user;
  String doctorName;
  String fullName;
  String img;
  String speciality;
  String rating;

  AppointmentUser({required this.user,required this.doctorName, required this.img, required this.fullName,required this.rating,required this.speciality});
  @override
  State<AppointmentUser> createState() => _AppointmentUserState();
}

class _AppointmentUserState extends State<AppointmentUser> {
  final databaseRef = FirebaseDatabase.instance.ref();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.white,foregroundColor: Colors.black,elevation: 0,),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage(widget.img))),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  widget.fullName,
                  style: TextStyle(
                      fontFamily: 'Poppins,',
                      fontSize: 26,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  widget.speciality,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 10,
                        width: 20,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('lib/images/Star.png')))),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      widget.rating,
                      style: TextStyle(fontSize: 14),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, top: 7),
                  height: 175,
                  width: 320,
                  decoration: BoxDecoration(
                      color: Color(0xFFD7DEEA),
                      borderRadius: BorderRadius.circular(30)),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Write your symptoms....',
                        border: InputBorder.none,
                        hintStyle:
                            TextStyle(fontSize: 12, fontFamily: 'Poppins')),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 320,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.grey.shade200,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 80,
                              height: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('lib/images/time.png'),
                                      fit: BoxFit.fitHeight),
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Avaiability',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 0,
                                  ),
                                  Text('6PM-9PM',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w100)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 85,
                            ),
                            Icon(Icons.arrow_forward_ios_rounded)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 320,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Color(0xFF1C6BA4),
                            ),
                            child: Center(
                                child: TextButton(
                                  onPressed: () async{
                                    try {
                                      List? getLen = (await databaseRef.child(
                                          "doctors")
                                          .child(widget.doctorName)
                                          .child("appointments/pending")
                                          .once()).snapshot.value as List;
                                      await databaseRef.child("doctors").child(widget.doctorName).child("appointments/pending").child(getLen.length.toString()).child("name").set(widget.user);
                                    } catch(e){
                                      print(e);
                                      await databaseRef.child("doctors").child(widget.doctorName).child("appointments/pending").child("0").child("name").set(widget.user);
                                    }
                                    print("done");
                                  },
                                  child: Text(
                                    'Book Now',
                                    style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                                )),
                          )
                        ])),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
