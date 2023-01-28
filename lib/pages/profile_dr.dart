import 'package:flutter/material.dart';
import 'package:health_app/auth/auth.dart';
import 'package:health_app/pages/login_page.dart';

class ProfileDr extends StatefulWidget {
  const ProfileDr({Key? key}) : super(key: key);

  @override
  State<ProfileDr> createState() => _ProfileDrState();
}

class _ProfileDrState extends State<ProfileDr> {
  final _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){
          _auth.handleSignOut();
          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
        },
        child: Text("Logout")
    );
  }
}
