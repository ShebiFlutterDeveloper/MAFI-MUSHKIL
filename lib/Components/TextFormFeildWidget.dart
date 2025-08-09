import 'package:flutter/material.dart';
import 'package:mafi_mushkil/App%20Colors/App_Colors.dart';

class Textformfeildwidget extends StatelessWidget {
  String hinttext;
  //TextEditingController controllerEmail;
  Textformfeildwidget(
      {super.key,
        required this.hinttext,
        //required this.controllerEmail,
        //required this.image,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: AppColors.offblack,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: TextFormField(
          //controller: controllerEmail,
          decoration: InputDecoration(
            hintText: hinttext,
            hintStyle: TextStyle(color: AppColors.BlackColor),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
