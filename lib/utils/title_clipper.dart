import 'package:flutter/material.dart';

class TitleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    // path.lineTo(size.width, size.height - 100);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width - 120, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TitleClipper oldClipper) => false;
}
