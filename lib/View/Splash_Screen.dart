import 'package:flutter/material.dart';
import 'package:mafi_mushkil/App%20Colors/App_Colors.dart';
import 'package:mafi_mushkil/Components/Black_Button.dart';
import 'package:mafi_mushkil/Components/TextWidget.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.LightGreenbg,
      body: Padding(
        padding: const EdgeInsets.only(top: 334),
        child: Column(
          children: [
            Center(child: Image(image: AssetImage('assets/applogo.png'),)),
          TextWidget(text: 'Mafi Mushkil',
            fontSize: 26,
          fontWeight: FontWeight.w900,
          ),
            Row(
              children: [
                Image(image: AssetImage('assets/tech.png')),
                //TextWidget(text: 'Pixel io\nTechnologies',fontSize: ,),
              ],
            ),
        //  BlackButton(buttontext: 'Get Started', ontap: (){}),
          ],
        ),
      ),

    );
  }
}
