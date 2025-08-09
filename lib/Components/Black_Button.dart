import 'package:flutter/material.dart';
import 'package:mafi_mushkil/App%20Colors/App_Colors.dart';
import 'package:mafi_mushkil/Components/TextWidget.dart';


class BlackButton extends StatelessWidget {
  String buttontext;
  VoidCallback ontap;
  BlackButton({super.key, required this.buttontext, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        height: 60,
        decoration: BoxDecoration(
          boxShadow: [
          ],
          color: AppColors.BlackColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: TextWidget(text: buttontext,
            fontWeight: FontWeight.w700,
            fontSize: 15,color:AppColors.LightGreenbg,)
        ),
      ),
    );
  }
}
