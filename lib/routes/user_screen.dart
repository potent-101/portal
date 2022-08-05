import 'package:flutter/material.dart';
import 'package:pleasework/routes.dart';
import 'package:pleasework/theme/constants.dart';
import 'package:pleasework/widgets/neu_Button.dart';
import 'package:pleasework/widgets/neu_input.dart';

import 'package:pleasework/widgets/scaffold_background.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return MyScafBckGround(
      scaffold: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: const Center(
              child: Text(
                'Profile',
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
                    height: 50,
                  ),
                  Container(
                    height: 336,
                    width: 336,
                    decoration: BoxDecoration(
                        color: const Color(0xffffffff).withOpacity(0.2),
                        border: Border.all(
                          width: 16,
                          color: const Color(0xffffffff).withOpacity(0.7),
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(170))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          size: 152,
                          Icons.camera_alt,
                          color: onPrimaryColor.withOpacity(0.8),
                        ),
                        Text(
                          '+Add image',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 28,
                              color: onPrimaryColor.withOpacity(0.5),
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    'Enter your username',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 24, color: onPrimaryColor, height: 1.3),
                  ),
                  const SizedBox(
                    height: 24,
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
                              hintStyle: TextStyle(
                                  color: onPrimaryColor.withOpacity(0.3)),
                              hintText: 'Username',
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
                      bText: 'Done',
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(RouteGenerator.mainScreen);
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
