import 'package:flutter/material.dart';
import '../Profile.dart';
import 'DashboardMenu.dart';

class ButtomNavBar extends StatefulWidget {
  const ButtomNavBar({Key? key}) : super(key: key);

  @override
  State<ButtomNavBar> createState() => _ButtomNavBarState();
}

class _ButtomNavBarState extends State<ButtomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          Dashboard(),
          Profile(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(color: Colors.white),
        unselectedLabelStyle: TextStyle(color: Colors.white),
        currentIndex: _currentIndex,
        onTap: onTapTapped,
      ),
    );
  }

  void onTapTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
