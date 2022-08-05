import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RoundNeu extends StatelessWidget {
  final VoidCallback onTap;
  final double width, height;
  final Color color;
  final BoxShape shape;
  final Widget? child;
  final double opacity;

  final BorderRadius? borderRadius;

  const RoundNeu(
      {Key? key,
      this.borderRadius,
      this.shape = BoxShape.rectangle,
      this.opacity = 0.2,
      required this.child,
      required this.color,
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
            shape: shape,
            color: color,
            borderRadius: borderRadius,
            boxShadow: [
              BoxShadow(
                  blurRadius: 10,
                  offset: const Offset(-5, -5),
                  color: const Color(0xffffffff).withOpacity(0.05)),
              BoxShadow(
                  blurRadius: 10,
                  offset: const Offset(5, 5),
                  color: const Color(0xff000000).withOpacity(opacity)),
            ]),
        child: Center(child: child),
      ),
    );
  }
}
