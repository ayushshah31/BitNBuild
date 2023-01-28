import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:health_app/pages/doctor_user.dart';

import '../widgets/doctor_card.dart';

class Home extends StatelessWidget {

  String name = FirebaseAuth.instance.currentUser!.email!.split("@")[0];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20,top:10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '👋 Hello!',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: Text(
                            name,
                            style: TextStyle(
                                fontSize: 28,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('lib/images/profile.png'))),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 60,
                  width: 330,
                  decoration: BoxDecoration(
                      color: Color(0xFFEEF6FC),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          size: 28,
                          color: Color(0xFF8AA0BC),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Search medical...',
                          style: TextStyle(color: Color(0xFF8AA0BC)),
                        ),
                        SizedBox(
                          width: 130,
                        ),
                        Image.asset('lib/images/Vector.png')
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Services',
                          style: TextStyle(
                              color: Color(0xFF253141),
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> DoctorUser()));
                      },
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Color(0xFFDCEDF9),
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage('lib/images/Doctor Icon.png'))),
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Color(0xFFFAF0DB),
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('lib/images/pills.png'))),
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Color(0xFFD6F6FF),
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('lib/images/reports.png'))),
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Color(0xFFF2E3E9),
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('lib/images/vaccine.png'))),
                    )
                  ]),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 170,
                  width: 330,
                  decoration: BoxDecoration(
                    color: Color(0xFFDCEDF9),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Text(
                              'Get the best\nMedical Service',
                              style: TextStyle(
                                  color: Color(0xFF0E1012),
                                  fontSize: 22,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 25,
                            ),
                            child: Text(
                              'We are just a click',
                              style: TextStyle(
                                  color: Color(0xFF4A545E),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 25,
                            ),
                            child: Text(
                              'from your health issues ',
                              style: TextStyle(
                                  color: Color(0xFF4A545E),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(
                          height: 170,
                          width: 117,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('lib/images/doctor.png'))),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Row(
                    children: [
                      Text(
                        'Upcoming appointments',
                        style: TextStyle(
                            color: Color(0xFF0E1012),
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      DoctorCard(
                        color1: Color(0xFF1C6BA4),
                        time: 0930,
                        day: 'Tue',
                        color2: Colors.white12,
                        date: 12,
                        disease: 'Depression',
                        doctorName: 'Dr.Mim Akhter',
                      ),
                      DoctorCard(
                        color1: Color(0xFFFAF0DB),
                        time: 0930,
                        day: 'Tue',
                        color2: Color(0xFFE09F1F),
                        date: 13,
                        disease: 'Depression',
                        doctorName: 'Dr.Mim Akhter',
                      ),
                      DoctorCard(
                        color1: Color(0xFFFAF0DB),
                        day: 'Tue',
                        color2: Color(0xFFFFFFFF),
                        date: 14,
                        disease: 'Depression',
                        doctorName: 'Dr.Mim Akhter',
                        time: 1200,
                      ),

                      // horizontal listview -> categories:doctors,surgeons,dentists
                    ],
                    //doctor list
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}