import 'package:flutter/material.dart';

import 'package:pleasework/widgets/scaffold_background.dart';

class VerifyScreen extends StatelessWidget{

  const VerifyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyScafBckGround(
      scaffold: Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Text('verify screen'),
      ),
    ),
    );
  }

}