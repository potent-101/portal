import 'package:flutter/material.dart';
import 'package:pleasework/routes/verify_screen.dart';
import 'package:pleasework/theme/constants.dart';
import 'package:pleasework/theme/theme.dart';
import 'package:rive_splash_screen/rive_splash_screen.dart';

class MySplashScreen extends StatelessWidget{

  const MySplashScreen();

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: splashThemeData,
        child: SafeArea(
          bottom: false,
          top: false,
          child:Scaffold(
            body: Center(
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SplashScreen.navigate(
                      name: 'assets/rive/portal-logo.riv',
                      next: (_) => const VerifyScreen(),
                      height: 160 * 1.5,
                      width: 165 * 1.5,
                      alignment: Alignment.bottomCenter,
                      startAnimation: 'coin spin',
                      isLoading: false,
                      backgroundColor: primaryColor,
                    ),
                      const SizedBox(
                        height: 24,
                      ),
                      const Text(
                          'Portal',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: onPrimaryColor
                        ),
                      ),
                      const SizedBox(
                        height: 120,
                      )
                    ]
                  ),
                ),
              ),
            ),
          )
        )
    );
  }

}