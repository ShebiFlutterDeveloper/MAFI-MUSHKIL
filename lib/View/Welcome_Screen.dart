import 'package:flutter/material.dart';
import 'package:mafi_mushkil/Components/Black_Button.dart';
import 'package:mafi_mushkil/Components/TextWidget.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 101,left: 50),
            child: TextWidget(text: 'Best Helping\nHands for you',fontSize: 31,fontWeight: FontWeight.w700,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70),
            child: TextWidget(text: 'With Our On-Demand Services App,\nWe Give Better Services To You.',
              fontSize: 14,fontWeight: FontWeight.w500,),
          ),
          SizedBox(height: 40,),
          Image(image: AssetImage('assets/welcome.png')),
          SizedBox(height: 60,),
          BlackButton(buttontext: 'Get Started', ontap: (){})
        ],
      ),
    );
  }
}
