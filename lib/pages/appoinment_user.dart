import 'package:flutter/material.dart';

class AppointmentUser extends StatefulWidget {
  const AppointmentUser({Key? key}) : super(key: key);

  @override
  State<AppointmentUser> createState() => _AppointmentUserState();
}

class _AppointmentUserState extends State<AppointmentUser> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: [
                      ImageIcon(
                        AssetImage('lib/images/abc1.png'),
                        size: 50,
                      )
                    ],
                  ),
                ),
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
                          image: AssetImage('lib/images/doc22.png'))),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Dr. Ayushi Shah',
                  style: TextStyle(
                      fontFamily: 'Poppins,',
                      fontSize: 26,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Cardiologist in Apollo Hospital',
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
                      '4.5 (17 Reviews)',
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
                  width: 350,
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
                        width: 350,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color(0xFFFFFFFF),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: .0),
                              child: Container(
                                width: 120,
                                height: 120,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage('lib/images/time.png'),
                                        fit: BoxFit.fitHeight),
                                    borderRadius: BorderRadius.circular(30)),
                              ),
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
                  height: 20,
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 360,
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Color(0xFF1C6BA4),
                            ),
                            child: Center(
                                child: Text(
                              'Book Now',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
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
