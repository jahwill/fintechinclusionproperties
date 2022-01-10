import 'dart:ui';

import 'package:flutter/cupertino.dart';

///this clip is for a top wave curve over a container
class TopContainerClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();
    path.lineTo(0, size.height * 0.7);
    path.quadraticBezierTo(size.width * 0.16, size.height - 20,
        size.width * 0.14, size.height - 28);
    path.quadraticBezierTo(
        size.width * 0.25, size.height, size.width * 0.35, size.height - 16);
    path.lineTo(size.width, size.height * 0.45);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
