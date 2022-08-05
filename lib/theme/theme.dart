import 'package:flutter/material.dart';
import 'package:pleasework/theme/constants.dart';

var splashThemeData = ThemeData(
  scaffoldBackgroundColor: primaryColor,
  fontFamily: josefinSansFontFamily,
);
var pTheme = ThemeData(
    fontFamily: josefinSansFontFamily,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: Color(0xffffffff),
      unselectedItemColor: Color(0xff70768A),
      selectedLabelStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w800,
        color: Color(0xffffffff),
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w800,
        color: Color(0xff70768A),
      ),
    ));
