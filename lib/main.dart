import 'package:flutter/material.dart';

import 'View/On-Boarding-View/On_Boarding_Screen.dart';
import 'View/Secuirity View/Enter_Phone_Number.dart';
import 'View/Secuirity View/Phone_Verification.dart';
import 'View/Splash_Screen.dart';
import 'View/Welcome_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:PhoneVerification(),
      //VerificationNumber(),
      //OnBoardingScreen(),
    );
  }
}