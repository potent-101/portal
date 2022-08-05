import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pleasework/theme/constants.dart';
import 'package:pleasework/widgets/round_neu.dart';

class HomeItem extends StatelessWidget {
  const HomeItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.centerEnd,
      children: [
        Positioned(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: RoundNeu(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              color: const Color(0xffffffff).withOpacity(0.25),
              onTap: () {},
              height: 120,
              width: 310,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 52),
                    child: Text(
                      'Wekesa Brian',
                      style: TextStyle(
                          fontSize: 20,
                          color: onPrimaryColor,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 52),
                    child: Text(
                      '0741443584',
                      style: TextStyle(
                          fontSize: 17,
                          color: onPrimaryColor.withOpacity(0.4),
                          fontWeight: FontWeight.w600,
                          height: 1.3),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 44),
                        child: TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.phone,
                            color: Color(0xff48D388),
                          ),
                          label: const Text(
                            'Call',
                            style: TextStyle(
                                fontSize: 20,
                                color: onPrimaryColor,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        'Ksh 420',
                        style: TextStyle(
                            fontSize: 20,
                            color: onPrimaryColor,
                            fontWeight: FontWeight.w700),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff48D388),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 16,
          child: RoundNeu(
            opacity: 0,
            shape: BoxShape.circle,
            color: const Color(0xffffffff).withOpacity(0.25),
            onTap: () {},
            height: 88,
            width: 88,
            child: const Icon(
              Icons.person,
              color: Color(0xffdddddd),
              size: 50,
            ),
          ),
        ),
      ],
    );
  }
}
