// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:mafi_mushkil/App%20Colors/App_Colors.dart';
// import 'package:mafi_mushkil/Components/Black_Button.dart';
// import 'package:mafi_mushkil/Components/TextFormFeildWidget.dart';
// import 'package:mafi_mushkil/Components/TextWidget.dart';
// class PhoneVerification extends StatelessWidget {
//   const PhoneVerification({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     PhoneVerification verificationController = Get.put(PhoneVerification());
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body:  Column(
//
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(top: 200.0),
//             child: Center(
//               child: CircleAvatar(backgroundColor: AppColors.LightGreenbg,radius: 40,
//                 child: Image(image: AssetImage("assets/msgicon.png")),),
//             ),
//           ),
//           SizedBox(height: 40,),
//           TextWidget(text: "Enter the code to continue",fontSize: 20,fontWeight:
//           FontWeight.w600,color: AppColors.BlackColor,),
//           SizedBox(height: 10,),
//           TextWidget(text: "A verification code has been sent\n"
//               "     to +923184665633 Via SMS",fontSize: 14,fontWeight:
//           FontWeight.w400,color: AppColors.BlackColor,),
//           SizedBox(height: 70,),
//           Textformfeildwidget(hinttext: 'Enter code here'),
//           SizedBox(height: 70,),
//           BlackButton(buttontext: "Verify", ontap: (){
//
//             print("object");
//             //verificationController.showBottomSheet();
//           },
//           ),
//             //height: 52,width: 335,color: AppColors.white,),
//           SizedBox(height: 14,),
//           TextWidget(text: "Resend in 59 sec",fontWeight: FontWeight.w500,
//             fontSize: 18,color: Colors.grey,)
//
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:mafi_mushkil/App%20Colors/App_Colors.dart';
import 'package:mafi_mushkil/Components/Black_Button.dart';
import 'package:mafi_mushkil/Components/TextWidget.dart';



class PhoneVerification extends StatelessWidget {
  const PhoneVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Center(
              child: CircleAvatar(backgroundColor: AppColors.LightGreenbg,radius: 40,
                child: Image(image: AssetImage("assets/msgicon.png")),),
            ),
    ),
          SizedBox(height: 20,),
          TextWidget(text: 'Enter the code to continue',
          fontSize: 20,
          fontWeight: FontWeight.w600,),
          SizedBox(height: 15,),
          TextWidget(text: 'A verification code has been sent\n     to +92 3184665633 via SMS.',
            fontWeight: FontWeight.w400,
          fontSize: 14,),
          SizedBox(height: 100,),
          BlackButton(buttontext: 'Verify', ontap: (){})
    ],
      )
    );
  }
}
