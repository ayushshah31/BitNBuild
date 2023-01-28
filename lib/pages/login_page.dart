import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/colors.dart' as color;
import 'package:health_app/pages/doctor_bottombar.dart';

import 'home_page.dart';
import 'package:health_app/auth/auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String email = "";
  String pass = "";
  List<String> doctors = [
    'ayushtest@gmail.com',
    'vinittest@gmail.com'
  ];

  bool checkDoctor(String email){
    if(doctors.contains(email)){
      return true;
    }
    return false;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 800,
            child: Stack(
              children: [
                Positioned(
                    top: 30,
                    right: 20,
                    child: Image.asset('lib/images/Login Bg Top.png')),
                Positioned(
                  left: 20,
                  top: 50,
                  child: Container(
                    height: 150,
                    width: 240,
                    child: Text(
                      'Welcome Back',
                      style: TextStyle(
                          fontSize: 48,
                          color: Color(0xFF424242),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w800,
                          shadows: [
                            Shadow(
                                color: Color(0xFF424242).withOpacity(.1),
                                offset: Offset(1, 5),
                                blurRadius: 5)
                          ]),
                    ),
                  ),
                ),
                Positioned(
                  top: 225,
                  left: 20,
                  child: Container(
                    height: 450,
                    width: 320,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFFFFFFF),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(10, 10),
                          blurRadius: 12,
                          color: color.AppColor.gradientSecond.withOpacity(.3),
                        ),
                      ],
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 26,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF424242)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 300,
                            child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 20,
                                ),
                                child: TextFormField(
                                  validator: (val)=> val!.isEmail? null:'Enter a valid email' ,
                                  onChanged: (val) => email=val,
                                  decoration: InputDecoration(
                                    labelText: 'Email Address',
                                    labelStyle: TextStyle(
                                        fontSize: 18,
                                        color: Color(0xFF8F9BB3),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w300),
                                    hintText: 'vinit45shah@gmail.com',
                                    hintStyle: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF8F9BB3),
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 300,
                            child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 20,
                                ),
                                child: TextFormField(
                                  obscureText: true,
                                  validator: (val)=> val!.length<6? "Minimum 6 chars":null ,
                                  onChanged: (val)=> pass=val,
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                    labelStyle: TextStyle(
                                        fontSize: 18,
                                        color: Color(0xFF8F9BB3),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w300),
                                    // hintText: '*********',
                                    hintStyle: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF8F9BB3),
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                )),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: color.AppColor.gradientFirst,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Container(
                              height: 60,
                              width: 280,
                              child: Center(
                                child: TextButton(
                                    onPressed: () async{
                                      if(_formKey.currentState!.validate()){
                                        final result = await _auth.signInWithEmailPassword(email, pass);
                                        // print(result!.email);
                                        if(result != null) {
                                          String emailid = result.email.toString();
                                          if (checkDoctor(emailid)) {
                                            Get.to(() => DoctorBottomBar());
                                          } else {
                                            Get.to(() => HomePage());
                                          }
                                        }
                                      }
                                    },
                                    child: Text(
                                      'Login',
                                      style: TextStyle(
                                        fontSize: 24,
                                        color: Colors.white,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )),
                              ),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      color.AppColor.gradientFirst.withOpacity(.9),
                                      color.AppColor.gradientSecond.withOpacity(1),
                                    ],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.bottomRight),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(10, 10),
                                    blurRadius: 12,
                                    color:
                                        color.AppColor.gradientSecond.withOpacity(.1),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: Text(
                              'OR',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 22,
                                  color: Color(0xFF8F9BB3)),
                            ),
                          ),
                          Center(
                            child: Text(
                              'Create Account',
                              style: TextStyle(
                                  fontSize: 26,
                                  color: color.AppColor.gradientFirst,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  margin: EdgeInsets.only(top: 650, left: 0),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'lib/images/Login Bg Bottom (1).png',
                          ),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                    right: 0,
                    top: 180,
                    left: 160,
                    child: Container(
                      height: 150,
                      width: 180,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                'lib/images/Injection.png',
                              ),
                              fit: BoxFit.fitHeight)),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
