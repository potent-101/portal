import 'package:flutter/material.dart';

import '../theme/constants.dart';
import '../theme/theme.dart';

class MyScafBckGround extends StatelessWidget{

  final Scaffold scaffold;

  const MyScafBckGround({
    required this.scaffold
});

  @override
  Widget build(BuildContext context) {
  return Theme(
      data: pTheme,
      child:  SafeArea(
          bottom: false,
          top: false,
          child: Container(
          decoration: const BoxDecoration(
          gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            primaryColor,
            primaryLightColor
          ],
          stops: [
            0.25,
            1.0
          ]
      )
  ),
    child: scaffold
    )
      )
  );
  }


}