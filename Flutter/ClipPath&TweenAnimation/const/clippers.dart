import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height*0.4);
    path.lineTo(size.width*0.75, size.height*0.6);
    path.lineTo(size.width, size.height*0.4);

    path.lineTo(size.width, 0);
    path.lineTo(size.width*0.75, size.height*0.2);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class MyClipper2 extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width*0.75, size.height*0.8);
    path.lineTo(0, size.height*0.6);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class MyClipper3 extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height*0.95);
    path.lineTo(size.width*0.6, size.height*0.8);
    path.lineTo(0, size.height*0.65);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}