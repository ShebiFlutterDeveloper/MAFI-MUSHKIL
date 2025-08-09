import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mafi_mushkil/App%20Colors/App_Colors.dart';
import 'package:mafi_mushkil/Components/Black_Button.dart';
import 'package:mafi_mushkil/Components/TextFormFeildWidget.dart';
import 'package:mafi_mushkil/Components/TextWidget.dart';
import 'package:mafi_mushkil/View/Secuirity%20View/Enter_Phone_Number.dart';

class VerificationController extends StatelessWidget {
  const VerificationController({super.key});

  @override
  Widget build(BuildContext context) {
    VerificationController verifcationController=Get.put(VerificationController());
    //VerificationController verificationController = Get.put(VerificationController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:  Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Center(
              child: CircleAvatar(backgroundColor:
              AppColors.LightGreenbg,
                radius: 40,
                child: Image(image: AssetImage("assets/icons/Group 427321854.png")),),
            ),
          ),
          SizedBox(height: 40,),
          TextWidget(text: "Enter the code to continous",fontSize: 20,fontWeight:
          FontWeight.w600,color: AppColors.BlackColor,),
          SizedBox(height: 10,),
          TextWidget(text: "A verification code has been sent\n"
              "     to +923184665633 Via SMS",fontSize: 14,fontWeight:
          FontWeight.w400,color: AppColors.BlackColor,),
          SizedBox(height: 70,),
          Textformfeildwidget(hinttext: 'Enter code here',
              //controllerEmail: controllerEmail
          ),
          //   (hinttext: "Enter code here"),
          // SizedBox(height: 70,),
          BlackButton(buttontext: "Verify", ontap: (){

            print("object");
            //verifcationController.showBottomSheet();
          },),
            // height: 52,
            // width: 335,
            //color: AppColors.white,),
          SizedBox(height: 14,),
          TextWidget(text: "Resend in 59 sec",fontWeight: FontWeight.w500,
            fontSize: 18,color: Colors.grey,)
        ],
      ),
    );
  }
}