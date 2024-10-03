import 'package:flutter/material.dart';

class CircleClipper extends CustomClipper<Path> {
  const CircleClipper();
  @override
  Path getClip(Size size) {
    var path = Path();
    final radius = size.width / 2;

    final rect = Rect.fromCircle(
      center: Offset(
        radius,
        radius,
      ),
      radius: radius,
    );

    path.addOval(rect);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
