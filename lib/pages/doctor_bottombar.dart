import 'package:flutter/material.dart';
import 'package:health_app/pages/bookings_dr.dart';
import 'package:health_app/pages/prescription_dr.dart';
import 'package:health_app/pages/profile_dr.dart';
import 'package:health_app/pages/schedule_dr.dart';

class DoctorBottomBar extends StatefulWidget {
  DoctorBottomBar({Key? key}) : super(key: key);

  @override
  State<DoctorBottomBar> createState() => _DoctorBottomBarState();
}

class _DoctorBottomBarState extends State<DoctorBottomBar> {
  int _selectedIndex = 0;

  int currentIndex = 0;
  late List mainTabs;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mainTabs = [
      Schedule(),
      Bookings(),
      Prescription(),
      Profile()
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.lightBlueAccent,
          selectedItemColor: Colors.deepPurple
        )
      ),
      child: Scaffold(
        body: mainTabs[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.indigo,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today),
              label: 'Schedule'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today),
                label: 'Appointments'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.file_copy),
                label: 'Prescription'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile'
            ),
          ],
          currentIndex: _selectedIndex,
          showUnselectedLabels: false,
          onTap: (val){
            setState(() {
              _selectedIndex = val;
            });
          },
        ),
      ),
    );
  }
}
