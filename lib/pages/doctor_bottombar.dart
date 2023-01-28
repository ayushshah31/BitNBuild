import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:health_app/pages/bookings_dr.dart';
import 'package:health_app/pages/prescription_dr.dart';
import 'package:health_app/pages/profile_dr.dart';
import 'package:health_app/pages/schedule_dr.dart';

class DoctorBottomBar extends StatefulWidget {
  DoctorBottomBar({Key? key}) : super(key: key);

  @override
  State<DoctorBottomBar> createState() => _DoctorBottomBarState();
}

class _DoctorBottomBarState extends State<DoctorBottomBar> with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;

  int currentIndex = 0;
  late TabController _tabController;
  late List mainTabs;
  late List<dynamic> navStack = [
    1,2,3,4
  ];

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 4);
    _tabController.index = 0;
    // TODO: implement initState
    super.initState();
    mainTabs = [
      Schedule(),
      Bookings(),
      Pres(),
      ProfileDr()
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
      child: SafeArea(
        child: WillPopScope(
          onWillPop: () async {
            if (Navigator.of(navStack[_tabController.index]).canPop()) {
              Navigator.of(navStack[_tabController.index]).pop();
              setState(
                    () {
                  _selectedIndex = _tabController.index;
                },
              );
              return false;
            } else {
              if (_tabController.index == 0) {
                setState(
                      () {
                    _selectedIndex = _tabController.index;
                  },
                );
                SystemChannels.platform
                    .invokeMethod('SystemNavigator.pop');
                return true;
              } else {
                _tabController.index = 0;
                setState(
                      () {
                    _selectedIndex = _tabController.index;
                  },
                );
                return false;
              }
            }
          },
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
        ),
      ),
    );
  }
}
