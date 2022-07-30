import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pleasework/routes.dart';
import 'package:pleasework/theme/constants.dart';
import 'package:pleasework/widgets/neu_Button.dart';
import 'package:pleasework/widgets/neu_input.dart';

import 'package:pleasework/widgets/scaffold_background.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;

    return MyScafBckGround(
      scaffold: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: const Center(
              child: Text(
                'Verify',
                style: TextStyle(
                  fontSize: 40,
                  color: onPrimaryColor,
                ),
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            reverse: true,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 32,
                  ),
                  SvgPicture.asset('assets/images/puzzlekid.svg'),
                  SvgPicture.asset('assets/images/kidshadow.svg'),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    'Enter your phone number \n to create an account',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 24, color: onPrimaryColor, height: 1.3),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  NeuInput(
                      alignment: Alignment.centerLeft,
                      bkColor: const Color(0xff0E1320),
                      height: 64,
                      width: size.width * 0.9,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: TextField(
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: onPrimaryColor.withOpacity(0.8)),
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.phone,
                                color: onPrimaryColor.withOpacity(0.4),
                              ),
                              hintStyle: TextStyle(
                                  color: onPrimaryColor.withOpacity(0.3)),
                              hintText: 'Phone Number',
                              border: InputBorder.none),
                        ),
                      )),
                  const SizedBox(
                    height: 35,
                  ),
                  NeuButton(
                      color: primaryColor,
                      height: 64,
                      width: size.width * 0.9,
                      bText: 'Get Code',
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(RouteGenerator.codeScreen);
                      }),
                  const SizedBox(
                    height: 32,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
