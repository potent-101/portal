import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter/widgets.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as shadow;

class NeuInput extends StatelessWidget {
  final double width, height;
  final Widget child;
  final Color bkColor;
  final Alignment alignment;

  const NeuInput(
      {Key? key,
      required this.alignment,
      required this.bkColor,
      required this.child,
      required this.height,
      required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        height: height,
        width: width,
        decoration: shadow.BoxDecoration(
            color: bkColor,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              shadow.BoxShadow(
                  blurRadius: 10,
                  offset: const Offset(-5, -5),
                  color: const Color(0xffffffff).withOpacity(0.2),
                  inset: true),
              shadow.BoxShadow(
                  blurRadius: 10,
                  offset: const Offset(5, 5),
                  color: const Color(0xff000000).withOpacity(0.5),
                  inset: true),
            ]),
        child: child);
  }
}
