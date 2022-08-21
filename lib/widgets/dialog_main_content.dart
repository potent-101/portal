import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as shadow;

class DialogContent extends StatelessWidget {
  final double? height, width;
  final Color? bkColor;
  final Widget? child;
  const DialogContent(
      {Key? key, this.height, this.width, this.bkColor, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: bkColor,
          ),
          child: child,
        ),
      ),
    );
  }
}
