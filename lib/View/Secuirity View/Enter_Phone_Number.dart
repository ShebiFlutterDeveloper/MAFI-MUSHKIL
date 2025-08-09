import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mafi_mushkil/App%20Colors/App_Colors.dart';
import 'package:mafi_mushkil/Components/Black_Button.dart';
import 'package:mafi_mushkil/Components/TextWidget.dart';
import 'package:mafi_mushkil/Controller/Verification_Controller.dart';
class VerificationNumber extends StatelessWidget {
  const VerificationNumber({super.key});

  @override
  Widget build(BuildContext context) {

    VerificationController verificationController =Get.put(VerificationController());
    //final VerifyController controller = Get.put(VerifyController());
    return Scaffold(
      body:Column(
        children: [SizedBox(height: 200,),
          Center(child:
          CircleAvatar(backgroundColor: AppColors.LightGreenbg,radius: 40,
            child: Image(image: AssetImage("assets/phoneicon.png")),),),
          SizedBox(height: 40,),
          TextWidget(text: "Enter your phone Number \n"
              "          for Verification",fontWeight: FontWeight.w600,
            fontSize: 20,color: AppColors.BlackColor,),
          SizedBox(height: 120,),
          Row(
            children: [SizedBox(width: 10,),
              // Country Code Picker

              CountryCodePicker(
                //mode: CountryCodePickerMode.dialog,
                onChanged: (country) {

                  //print('Country coCde selected: ${country.code}');
                },
                initialSelection: 'US',
                showFlag: true,
                showDropDownButton: true,
                padding: EdgeInsets.symmetric(horizontal: 8.0),
              ),

              // SizedBox(width: 8.0), // Space between picker and text field
              // Phone Number TextField
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(

                      //labelText: 'Phone Number',
                      hintText: 'Enter phone number',
                    ),
                    onChanged: (value) {
                      // You can combine the country code and phone number here if needed
                      //print('Phone number: $_selectedCountryCode$value');
                    },
                  ),
                ),
              ),
            ],),
          SizedBox(height: 80,),
          BlackButton(buttontext: "Verify", ontap: (){
            //controller.verify.value;
          //  verificationController.BlackButton();
          },
            //width: 335,height: 52,color: AppColors.white,)
          )],
      ) ,
    );
  }
}