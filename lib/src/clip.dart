import 'package:flutter/widgets.dart';

class PopoverClipper extends CustomClipper<Path> {
  PopoverClipper({this.radius = 0});

  final double radius;

  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0.0, 9.4 + radius);
    path.arcToPoint(Offset(radius, 9.4), radius: Radius.circular(radius));
    path.lineTo(size.width - 26.4, 9.4);
    path.lineTo(size.width - 19.2, 0.0);
    path.lineTo(size.width - 12.0, 9.4);
    path.lineTo(size.width - radius, 9.4);
    path.arcToPoint(Offset(size.width, 9.4 + radius), radius: Radius.circular(radius));
    path.lineTo(size.width, size.height - radius);
    path.arcToPoint(Offset(size.width - radius, size.height), radius: Radius.circular(radius));
    path.lineTo(radius, size.height);
    path.arcToPoint(Offset(0.0, size.height - radius), radius: Radius.circular(radius));
    path.close();

    return path;
  }

  @override
  bool shouldReclip(PopoverClipper old) {
    return radius != old.radius;
  }
}