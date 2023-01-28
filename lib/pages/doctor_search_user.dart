import 'package:flutter/material.dart';

class DoctorDescription extends StatefulWidget {
  const DoctorDescription({Key? key}) : super(key: key);

  @override
  State<DoctorDescription> createState() => _DoctorDescriptionState();
}

class _DoctorDescriptionState extends State<DoctorDescription> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(children: [
        Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20),
              height: 80,
              width: 420,
              decoration: BoxDecoration(
                color: Color(0xFF1C6BA4),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ImageIcon(
                      AssetImage('lib/images/abc1.png'),
                      size: 40,
                      color: Color(0xFFFFFFFF),
                    ),
                    Text(
                      'Details',
                      style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'Poppins',
                          color: Color(0xFFFFFFFF)),
                    ),
                    ImageIcon(
                      AssetImage('lib/images/abc.png'),
                      size: 40,
                      color: Color(0xFFFFFFFF),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Positioned(
                top: 0,
                right: 20,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 370,
                        height: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color(0xFFFFFFFF),
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(left: 20.0),
                              width: 120,
                              height: 120,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('lib/images/doc21.jpg'),
                                      fit: BoxFit.cover),
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
                                    'Dr. Banner',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Cardiologist in Apollo Hospital',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w100)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            width: 110,
                            height: 110,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFE8EBED),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Patients',
                                    style: TextStyle(
                                      color: Color(0xFF253141),
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text('100+',
                                      style: TextStyle(
                                          color: Color(0xFF253141),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600))
                                ],
                              ),
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                            width: 110,
                            height: 110,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFE8EBED),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Practice',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF253141),
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text('10 years',
                                      style: TextStyle(
                                          color: Color(0xFF253141),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600))
                                ],
                              ),
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                            width: 110,
                            height: 110,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFE8EBED),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Rating',
                                    style: TextStyle(
                                      color: Color(0xFF253141),
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star),
                                      Text('4.7',
                                          style: TextStyle(
                                              color: Color(0xFF253141),
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600)),
                                    ],
                                  )
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'About',
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Text(
                          'MBBS, PhD,',
                          style: TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                        ),
                      ),
                      SizedBox(
                        height: 0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Text('International College of Surgeons.',
                            style: TextStyle(
                              fontSize: 16,
                            )),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Text(
                          'Ex- Professor & Head of Department',
                          style: TextStyle(fontFamily: 'Poppins', fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Text('Department of Neurosurgery'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Text('Dhaka Medical College & Hospital'),
                      ),
                    ],
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
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )),
                            )
                          ])),
                ],
              ),
            ),
          ],
        ),
      ]),
    ));
  }
}
