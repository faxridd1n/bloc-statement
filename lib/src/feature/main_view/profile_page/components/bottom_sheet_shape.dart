import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(0,size.height*0.0612500);
    path0.cubicTo(size.width*-0.0026923,size.height*-0.0002904,size.width*0.0582000,size.height*0.0130934,size.width*0.4096923,size.height*0.0145455);
    path0.cubicTo(size.width*0.4395077,size.height*0.0146843,size.width*0.4186923,size.height*0.0380808,size.width*0.4397538,size.height*0.0382197);
    path0.cubicTo(size.width*0.4592923,size.height*0.0381313,size.width*0.5428462,size.height*0.0388258,size.width*0.5623692,size.height*0.0387247);
    path0.cubicTo(size.width*0.5807385,size.height*0.0394697,size.width*0.5608615,size.height*0.0145707,size.width*0.5931538,size.height*0.0151894);
    path0.cubicTo(size.width*0.9470000,size.height*0.0122475,size.width*0.9974154,size.height*-0.0037879,size.width,size.height*0.0648106);
    path0.quadraticBezierTo(size.width*1.0036000,size.height*0.3215530,size.width*0.9959077,size.height*0.9983460);
    path0.lineTo(0,size.height*1.0017045);
    path0.quadraticBezierTo(0,size.height*0.7665909,0,size.height*0.0612500);
    path0.close();

    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}
