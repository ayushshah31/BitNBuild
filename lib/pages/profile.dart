import 'package:flutter/material.dart';
import 'package:health_app/auth/auth.dart';
import 'package:health_app/pages/login_page.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  // ignore: unused_field
  final _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    // return ElevatedButton(
    //   onPressed: (){
    //     _auth.handleSignOut();
    //     Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
    //   },
    //   child: Center(child: Text("Logout"))
    // );
    return Scaffold(
      backgroundColor: Color(0xFF1C6BA4),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 10),
          child: Column(
            children: [
              Row(
                children: [
                  ImageIcon(
                    AssetImage(
                      'lib/images/abc1.png',
                    ),
                    size: 50,
                    color: Color(0xFFFFFFFF),
                  )
                ],
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
                        fit: BoxFit.fitWidth,
                        image: AssetImage(
                          'lib/images/profile.png',
                        ))),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Dr. Ayush Shah',
                style: TextStyle(
                    fontFamily: 'Poppins,',
                    color: Color(0xffffffff),
                    fontSize: 32,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'App Developer',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    color: Color(0xFFFFFFFF)),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 320,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFFFFFFFF),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.settings,
                                  size: 35,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  'Account Settings',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        )
                      ])),
              SizedBox(
                height: 20,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 320,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFFFFFFFF),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 5.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.settings,
                                  size: 35,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  'Privacy Policy',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        )
                      ])),
              SizedBox(
                height: 20,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 320,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFFFFFFFF),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.settings,
                                  size: 35,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  'Profile Settings',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        )
                      ])),
              SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.logout,
                    color: Color(0xFFffffff),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      _auth.handleSignOut();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text(
                      'Log Out',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
