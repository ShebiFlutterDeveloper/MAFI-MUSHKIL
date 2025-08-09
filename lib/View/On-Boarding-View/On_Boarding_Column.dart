import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mafi_mushkil/Components/TextWidget.dart';

class OnBoardingColumn extends StatelessWidget {
  final String image;
  final String text;
  final String text2;
  OnBoardingColumn(
      {super.key,
        required this.image,
        required this.text,
        required this.text2,
      });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 151,
        ),
        Image(image: AssetImage(image)),
        SizedBox(
          height: 25,
        ),
        TextWidget(text: text,fontWeight: FontWeight.w700,fontSize: 22,),
        SizedBox(
          height: 20,
        ),
        TextWidget(text: text2,fontWeight: FontWeight.w400,fontSize: 16,),
        SizedBox(
          height: 60,
        ),
      ],
    );
  }
}
