import 'package:flutter/material.dart';
import 'package:pleasework/routes/code_screen.dart';
import 'package:pleasework/routes/main_screen_content/main_screen.dart';
import 'package:pleasework/routes/splash_screen.dart';
import 'package:pleasework/routes/user_screen.dart';

class RouteGenerator {
  static const String splashScreen = '/';
  static const String verifyScreen = '/verifyScreen';
  static const String codeScreen = '/codeScreen';
  static const String userScreen = '/userScreen';
  static const String mainScreen = '/mainScreen';

  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(
          builder: (_) => const MySplashScreen(),
        );
      case codeScreen:
        return MaterialPageRoute(
          builder: (_) => const CodeScreen(),
        );
      case userScreen:
        return MaterialPageRoute(
          builder: (_) => const UserScreen(),
        );
      case mainScreen:
        return MaterialPageRoute(
          builder: (_) => MainScreen(),
        );
      default:
        throw const FormatException('Route not found');
    }
  }
}

class RouteException implements Exception {
  final String message;
  const RouteException(this.message);
}
