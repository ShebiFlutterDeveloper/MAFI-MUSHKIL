import 'package:flutter/material.dart';
import 'package:mafi_mushkil/App%20Colors/App_Colors.dart';
import 'package:mafi_mushkil/Components/TextWidget.dart';


class NextButton extends StatelessWidget {
  String buttontext;
  VoidCallback ontap;
  NextButton({super.key, required this.buttontext,
    required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 40,
        width: 108,
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
