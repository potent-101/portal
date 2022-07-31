import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pleasework/routes.dart';
import 'package:pleasework/theme/constants.dart';
import 'package:pleasework/widgets/neu_Button.dart';

import 'package:pleasework/widgets/scaffold_background.dart';

class CodeScreen extends StatelessWidget {
  const CodeScreen({Key? key}) : super(key: key);

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
                'Code',
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
                  SvgPicture.asset('assets/images/guycode.svg'),
                  SvgPicture.asset('assets/images/guycodesvg.svg'),
                  const SizedBox(
                    height: 40,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                        text: 'Enter the verification code\nsent to ',
                        style: TextStyle(
                            fontFamily: josefinSansFontFamily,
                            fontSize: 24,
                            color: onPrimaryColor,
                            height: 1.3),
                        children: [
                          TextSpan(
                            text: '0741443584',
                            style: TextStyle(
                                fontFamily: josefinSansFontFamily,
                                fontSize: 28,
                                color: onPrimaryColor,
                                fontWeight: FontWeight.bold,
                                height: 1.3),
                          )
                        ]),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  SizedBox(
                    height: 64,
                    width: size.width * 0.9,
                    child: PinCodeTextField(
                        appContext: context,
                        length: 4,
                        keyboardType: TextInputType.number,
                        enableActiveFill: true,
                        textStyle: TextStyle(
                            fontSize: 48,
                            color: const Color(0xffffffff).withOpacity(0.7),
                            fontWeight: FontWeight.w600),
                        innerBoxShadows: [
                          BoxShadow(
                              blurRadius: 8,
                              offset: const Offset(-5, -5),
                              color: const Color(0xffffffff).withOpacity(0.3),
                              inset: true),
                          BoxShadow(
                              blurRadius: 8,
                              offset: const Offset(5, 5),
                              color: const Color(0xff000000).withOpacity(0.5),
                              inset: true),
                        ],
                        pinTheme: PinTheme(
                          activeColor: Colors.transparent,
                          inactiveColor: Colors.transparent,
                          selectedColor:
                              const Color(0xffffffff).withOpacity(0.7),
                          activeFillColor: const Color(0xff101522),
                          selectedFillColor: const Color(0xff101522),
                          inactiveFillColor: const Color(0xff101522),
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(8),
                          fieldHeight: 64,
                          fieldWidth: 64,
                        ),
                        onChanged: (String code) {}),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  NeuButton(
                      color: primaryColor,
                      height: 64,
                      width: size.width * 0.9,
                      bText: 'Verify',
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(RouteGenerator.userScreen);
                      }),
                  const SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Didn\'t receive the code?',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xffffffff).withOpacity(0.65),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'RESEND',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffffffff),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
