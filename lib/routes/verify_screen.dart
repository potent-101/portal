import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pleasework/theme/constants.dart';

import 'package:pleasework/widgets/scaffold_background.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyScafBckGround(
      scaffold: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            // ignore: prefer_const_constructors
            title: Center(
              child: const Text(
                'Verify',
                style: TextStyle(
                  fontSize: 40,
                  color: onPrimaryColor,
                ),
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/images/puzzlekid.svg'),
                SvgPicture.asset('assets/images/kidshadow.svg'),
              ],
            ),
          )),
    );
  }
}
