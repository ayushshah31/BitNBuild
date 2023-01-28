import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: unused_import
import 'package:health_app/pages/login_page.dart';

// ignore: unused_import
import 'pages/get_started.dart';
// ignore: unused_import
import 'pages/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'auth/auth.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return(StreamProvider<User?>.value(
        value: AuthService().user,
        initialData: FirebaseAuth.instance.currentUser,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: GetStarted())
    ));
  }
}
