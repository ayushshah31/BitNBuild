import 'package:flutter/material.dart';

import '../widgets/doctor_card.dart';
import '../widgets/popular_doctors_user.dart';

class DoctorUser extends StatefulWidget {
  const DoctorUser({Key? key}) : super(key: key);

  @override
  State<DoctorUser> createState() => _DoctorUserState();
}

class _DoctorUserState extends State<DoctorUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Icon(Icons.arrow_back_ios_new_sharp),
                  ),
                ),
                SizedBox(
                  width: 110,
                ),
                Text(
                  'Doctors',
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      color: Color(0xFF0E1012)),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              width: 370,
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
                      width: 160,
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
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Live Doctors',
                      style: TextStyle(
                          color: Color(0xFF253141),
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600)),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('lib/images/doc11.png')),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('lib/images/doc15.jpg')),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('lib/images/doc13.png')),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('lib/images/doc14.jpg')),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('lib/images/doc12.png')),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('lib/images/doc16.jpg')),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('lib/images/doc17.jpg')),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Popular Doctors',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 380,
              width: 400,
              child: ListView(
                children: [
                  PopularCard(
                    color1: Colors.white,
                    disease1: 'Cardiologist in Apollo hospital',
                    doctorName: 'Dr. Banner',
                    image2: 'lib/images/doc21.jpg',
                    text3: '4.5 (5 reviews)',
                  ),
                  PopularCard(
                    color1: Colors.white,
                    disease1: 'Physologist in Winsoft hospital',
                    doctorName: 'Dr. Strange',
                    image2: 'lib/images/doc19.jpg',
                    text3: '4.2 (8 reviews)',
                  ),
                  PopularCard(
                    color1: Colors.white,
                    disease1: 'Chiropractor in Sanghvi hospital',
                    doctorName: 'Dr. Akhter',
                    image2: 'lib/images/doc16.jpg',
                    text3: '4.7 (4 reviews)',
                  ),
                  PopularCard(
                    color1: Colors.white,
                    disease1: 'Dentist in Nayar hospital',
                    doctorName: 'Dr. Amit Shah',
                    image2: 'lib/images/doc18.jpg',
                    text3: '4.5 (5 reviews)',
                  ),
                  PopularCard(
                    color1: Colors.white,
                    disease1: 'ENT specialist in Phoenix hospital',
                    doctorName: 'Dr.Pinky Shah',
                    image2: 'lib/images/doc14.jpg',
                    text3: '4.5 (5 reviews)',
                  ),
                  PopularCard(
                    color1: Colors.white,
                    disease1: 'Gastrologist in apollo hospital',
                    doctorName: 'Dr.Dhingani',
                    image2: 'lib/images/doc15.jpg',
                    text3: '4.5 (5 reviews)',
                  ),
                  PopularCard(
                    color1: Colors.white,
                    disease1: 'Trichologist in apollo hospital',
                    doctorName: 'Dr.Avish Shah',
                    image2: 'lib/images/doc17.jpg',
                    text3: '4.5 (5 reviews)',
                  ),
                  PopularCard(
                    color1: Colors.white,
                    disease1: ' Ayurvedic in apollo hospital',
                    doctorName: 'Dr.Solanki',
                    image2: 'lib/images/doc11.png',
                    text3: '4.5 (5 reviews)',
                  ),
                  PopularCard(
                    color1: Colors.white,
                    disease1: 'Gastrologist in apollo hospital',
                    doctorName: 'Dr.Mirgh',
                    image2: 'lib/images/doc12.png',
                    text3: '4.5 (5 reviews)',
                  ),
                  PopularCard(
                    color1: Colors.white,
                    disease1: 'Dietician in apollo hospital',
                    doctorName: 'Dr.Ronnit',
                    image2: 'lib/images/doc13.png',
                    text3: '4.5 (5 reviews)',
                  ),
                  PopularCard(
                    color1: Colors.white,
                    disease1: 'Homeopath in City hospital',
                    doctorName: 'Dr.Hetvi',
                    image2: 'lib/images/doctor.png',
                    text3: '4.5 (5 reviews)',
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}