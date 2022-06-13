
import 'package:flutter/material.dart';
import 'package:pleasework/routes/splash_screen.dart';

class RouteGenerator{
  static const String splashScreen = '/';
  static const String verifyScreen = '/verifyScreen';

  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case splashScreen :
        return MaterialPageRoute(builder: (_)=> const SplashScreen(),);
      default:
        throw const FormatException('Route not found');
    }
  }
}

class RouteException implements Exception{
  final String message;
  const RouteException(this.message);
}