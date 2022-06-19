import 'package:flutter/material.dart';

class VerifyScreen extends StatelessWidget{

  const VerifyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
          body: Center(
            child: Text('verify screen'),
          ),
        )
    );
  }

}