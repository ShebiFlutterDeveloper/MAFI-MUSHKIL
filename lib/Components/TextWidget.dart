//import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class TextWidget extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;
  TextWidget({super.key,
  required this.text,
    this.color=Colors.black,
    this.fontWeight=FontWeight.w700,
    this.fontSize=12,
 });
  @override
  Widget build(BuildContext context) {
    return Text(text,style: GoogleFonts.roboto(
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: color,),);
  }
}
