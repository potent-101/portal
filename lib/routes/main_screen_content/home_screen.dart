import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pleasework/theme/constants.dart';
import 'package:pleasework/widgets/home_item.dart';
import 'package:pleasework/widgets/neu_Button.dart';
import 'package:pleasework/widgets/neu_input.dart';
import 'package:pleasework/widgets/round_neu.dart';
import 'package:pleasework/widgets/scaffold_background.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 16,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                      text: 'Hello, ',
                      style: TextStyle(
                          fontFamily: josefinSansFontFamily,
                          fontSize: 32,
                          color: onPrimaryColor,
                          height: 1.3),
                      children: [
                        TextSpan(
                          text: 'Eric\n',
                          style: TextStyle(
                            fontFamily: josefinSansFontFamily,
                            fontSize: 32,
                            color: onPrimaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: ' Ksh ',
                          style: TextStyle(
                              fontFamily: josefinSansFontFamily,
                              fontSize: 32,
                              color: Color(0xffFF7C7C),
                              fontWeight: FontWeight.bold,
                              height: 1.8),
                        ),
                        TextSpan(
                          text: '-1,080',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 32,
                            color: Color(0xffFF7C7C),
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ]),
                ),
                const Spacer(),
                RoundNeu(
                  color: const Color(0xff2D3547),
                  onTap: () {},
                  height: 48,
                  width: 48,
                  shape: BoxShape.circle,
                  child: const Icon(
                    Icons.person,
                    color: Color(0xffdddddd),
                  ),
                ),
                const SizedBox(
                  width: 24,
                ),
              ],
            ),
            const SizedBox(
              height: 28,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 24,
                ),
                Expanded(
                  child: NeuInput(
                      alignment: Alignment.centerLeft,
                      bkColor: const Color(0xff272E3E),
                      height: 48,
                      width: size.shortestSide,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: TextField(
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: onPrimaryColor.withOpacity(0.8)),
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.search,
                                color: onPrimaryColor.withOpacity(0.4),
                              ),
                              hintStyle: TextStyle(
                                  color: onPrimaryColor.withOpacity(0.3)),
                              hintText: 'Search',
                              border: InputBorder.none),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: RoundNeu(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    color: const Color(0xff272E3E),
                    onTap: () {},
                    height: 48,
                    width: 48,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Icon(
                        Icons.tune,
                        color: onPrimaryColor.withOpacity(0.5),
                        size: 36,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return const HomeItem();
                    }))
          ],
        ),
      ),
    );
  }
}
