import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pleasework/theme/constants.dart';

class NeuButton extends StatelessWidget {
  final String bText;
  final VoidCallback onTap;
  final double width, height;

  NeuButton(
      {Key? key,
      required this.bText,
      required this.onTap,
      required this.height,
      required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                  blurRadius: 10,
                  offset: const Offset(-5, -5),
                  color: const Color(0xffffffff).withOpacity(0.05)),
              BoxShadow(
                  blurRadius: 10,
                  offset: const Offset(5, 5),
                  color: const Color(0xff000000).withOpacity(0.2)),
            ]),
        child: Center(
          child: Text(
            bText,
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: onPrimaryColor.withOpacity(0.8)),
          ),
        ),
      ),
    );
  }
}
