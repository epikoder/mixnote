import 'package:flutter/cupertino.dart';

class RightWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width - 40, size.height);

    var firstControlPoint = Offset(size.width - 60, size.height * .7);
    var firstEndPoint = Offset(size.width - 20, size.height * .5);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint =
    Offset(size.width + 10, size.height * .3);
    var secondEndPoint = Offset(size.width - 20, 0);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width - 20, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
