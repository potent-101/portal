import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pleasework/routes/main_screen_content/home_screen.dart';
import 'package:pleasework/widgets/scaffold_background.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  int _selectedIndex = 0;

  List<Widget> _screens = [HomeScreen()];

  @override
  Widget build(BuildContext context) {
    return MyScafBckGround(
        scaffold: Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor: const Color(0xff101522),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xff70768A),
              size: 32,
            ),
            activeIcon: Icon(
              Icons.home,
              color: Color(0xffffffff),
              size: 32,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              color: Color(0xff70768A),
              size: 32,
            ),
            activeIcon: Icon(
              Icons.notifications,
              color: Color(0xffffffff),
              size: 32,
            ),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.fromLTRB(8.0, 4, 8, 3),
              child: Icon(
                Icons.contacts,
                color: Color(0xff70768A),
                size: 26,
              ),
            ),
            activeIcon: Icon(
              Icons.contacts,
              color: Color(0xffffffff),
              size: 26,
            ),
            label: 'Contacts',
          ),
        ],
      ),
      body: _screens.elementAt(_selectedIndex),
    ));
  }
}
