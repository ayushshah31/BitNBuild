import 'package:flutter/material.dart';
import 'package:health_app/auth/auth.dart';
import 'package:health_app/pages/login_page.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        _auth.handleSignOut();
        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
      },
      child: Center(child: Text("Logout"))
    );
  }
}
