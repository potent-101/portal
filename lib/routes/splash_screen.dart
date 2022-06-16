import 'package:flutter/material.dart';
import 'package:pleasework/theme/constants.dart';
import 'package:pleasework/theme/theme.dart';

class SplashScreen extends StatelessWidget{

  const SplashScreen();

  @override
  Widget build(BuildContext context) {
    return Theme(data: splashThemeData,
        child: const Scaffold(
          body: Center(
            child: Text('portal pro max',
              style: TextStyle(
                color: onPrimaryColor,
                fontSize: 40,
              ),
            ),
          ),
        )
    );
  }

}