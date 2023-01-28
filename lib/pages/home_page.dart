import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:health_app/pages/profile.dart';
import 'package:health_app/pages/prescription.dart';
import 'package:health_app/pages/schedule.dart';
import 'home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0 ;
  late List mainTabs;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mainTabs = [
      Home(),
      Schedule(),
      Prescription(),
      Profile()
    ];
  }
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     bottomNavigationBar: Container(
  //       color: Colors.white,
  //       child: Padding(
  //         padding: EdgeInsets.only(
  //           left: 20,
  //           right: 20,
  //         ),
  //         child: GNav(
  //           selectedIndex: _currentIndex,
  //             onTabChange: (val){
  //               setState(() {
  //                 _currentIndex = val ;
  //               });
  //             },
  //             tabs: [
  //           GButton(
  //             icon: Icons.home,
  //             text: 'Home',
  //             iconActiveColor: Colors.blue,
  //             iconColor: Colors.grey.withOpacity(.8),
  //             iconSize: 30,
  //           ),
  //           GButton(
  //             icon: Icons.calendar_today_outlined,
  //             text: 'Schedule',
  //             iconColor: Colors.grey.withOpacity(.8),
  //             iconSize: 30,
  //           ),
  //           GButton(
  //             icon: Icons.description,
  //             text: 'Reports',
  //             iconColor: Colors.grey.withOpacity(.8),
  //             iconSize: 30,
  //           ),
  //           GButton(
  //             icon: Icons.person,
  //             text: 'Profile',
  //             iconColor: Colors.grey.withOpacity(.8),
  //             iconSize: 30,
  //           )
  //         ]),
  //       ),
  //     ),
  //     body: mainTabs[_currentIndex],
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 1,
        currentIndex: _currentIndex,
        // showSelectedLabels: true,
        // selectedFontSize: 20,
        selectedItemColor: Colors.black,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.grey.withOpacity(.8),
        onTap: (val){
          setState(() {
            _currentIndex = val;
          });
        },
        selectedIconTheme: IconThemeData(
          color: Colors.blue,
        ),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            label: 'Reports',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      body: mainTabs[_currentIndex],
    );
  }

}
