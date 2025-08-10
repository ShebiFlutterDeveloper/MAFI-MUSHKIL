// import 'package:flutter/material.dart';
// import 'package:grocerry_app/Controller/App_Constant/App_Colors.dart';
// import 'package:grocerry_app/Controller/Components/Green_Button.dart';
// import 'package:grocerry_app/Controller/Components/Next_Button.dart';
// import 'package:grocerry_app/Controller/Components/Skip_Button.dart';
// import 'package:grocerry_app/Views/On-Boarding%20View/On-Boarding_Column.dart';
//
// class OnBoardingScreen extends StatefulWidget {
//   const OnBoardingScreen({super.key});
//
//   @override
//   State<OnBoardingScreen> createState() => _OnBoardingScreenState();
// }
//
// class _OnBoardingScreenState extends State<OnBoardingScreen> {
//   PageController pageController = PageController();
//   int index = 0;
//    int circlecolor = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         floatingActionButton: index == 2
//             ? Padding(
//                 padding: const EdgeInsets.only(left: 25),
//                 child: GreenButton(buttontext: 'Get Started', ontap: () {}),
//               )
//             : Row(
//                 children: [
//                   SizedBox(
//                     width: 36,
//                   ),
//                   SkipButton(SkipButtons: 'Skip', onpressed: (){
//
//
//                   },),
//                   SizedBox(
//                     width: 80,
//                   ),
//                   CircleAvatar(
//                     backgroundColor: index == 0
//                         ? AppColors.darkgreencolor
//                         : AppColors.lightblackcolor,
//                     radius: 5,
//                   ),
//                   SizedBox(
//                     width: 3,
//                   ),
//                   CircleAvatar(
//                     backgroundColor: index == 1
//                         ? AppColors.darkgreencolor
//                         : AppColors.lightblackcolor,
//                     radius: 5,
//                   ),
//                   SizedBox(
//                     width: 90,
//                   ),
//                   NextButton(NextButtons: 'Next', onpressed: (){
//
//                   },),
//                 ],
//               ),
//         body: Stack(
//           children: [
//             PageView(
//                 controller: pageController,
//                 onPageChanged: (pageIndex) {
//                   index = pageIndex;
//                   setState(() {});
//                 },
//                 children: [
//                   OnBoardingColumn(
//                     image: 'assets/slide1.png',
//                     btext: 'Buy Grocery',
//                     stext:
//                         'Lorem ipsum dolor sit amet, consetetur\n    sadipscing elitr, sed diam nonumy',
//
//                   ),
//                   OnBoardingColumn(
//                     image: 'assets/slide2.png',
//                     btext: 'Fast Delivery',
//                     stext:
//                         'Lorem ipsum dolor sit amet, consetetur\n    sadipscing elitr, sed diam nonumy',
//
//                   ),
//                   Column(
//                     children: [
//                       OnBoardingColumn(
//                         image: 'assets/slide3.png',
//                         btext: 'Enjoy Quality Food',
//                         stext:
//                             'Lorem ipsum dolor sit amet, consetetur\n    sadipscing elitr, sed diam nonumy',
//
//                       )
//                     ],
//                   )
//                 ]),
//             // Column(
//             //
//             //   children: [
//             //   Spacer(),
//             //   Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//             //     CircleAvatar(),
//             //     CircleAvatar(),
//             //     CircleAvatar(),
//             //   ],),
//             //   SizedBox(height: 80,)
//             // ],)
//           ],
//         ));
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mafi_mushkil/App%20Colors/App_Colors.dart';
import 'package:mafi_mushkil/Components/Black_Button.dart';
import 'package:mafi_mushkil/Components/Next_Button.dart';
import 'package:mafi_mushkil/View/On-Boarding-View/On_Boarding_Column.dart';
import 'package:mafi_mushkil/View/Welcome_Screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pageController = PageController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: index == 2
          ? Padding(
        padding: const EdgeInsets.only(left: 25),
        child: BlackButton(buttontext: 'Get Started', ontap: () {
          Navigator.push(context, CupertinoPageRoute(builder: (context)=>WelcomeScreen()));
        }),
      )
          : Row(
        children: [
          const SizedBox(width: 36),
          TextButton(onPressed: (){}, child: Text('Skip',style: GoogleFonts.robotoFlex(
            fontWeight: FontWeight.w400,
            fontSize: 17,color: AppColors.BlackColor
          ),)),
          const SizedBox(width: 60),
          CircleAvatar(
            backgroundColor: index == 0
                ? AppColors.BlackColor
                : AppColors.LightGreenbg,
            radius: 5,
          ),
          const SizedBox(width: 3),
          CircleAvatar(
            backgroundColor: index == 1
                ? AppColors.BlackColor
                : AppColors.LightGreenbg,
            radius: 5,
          ),
          const SizedBox(width: 3),
          CircleAvatar(
            backgroundColor: index == 2
                ? AppColors.BlackColor
                : AppColors.LightGreenbg,
            radius: 5,
          ),
          const SizedBox(width: 55),
          NextButton(
            buttontext: 'Next',
            ontap: () {
              if (index < 2)  {
                pageController.nextPage(
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.easeIn,
                );
              }
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (pageIndex) {
              setState(() {
                index = pageIndex;
              });
            },
            children: [
              OnBoardingColumn(
                image: 'assets/onboard1.png',
                text: 'Choose a service',
                text2:
                'Find the right service for your needs\neasily, with a variety of options\navailable at your fingertips.',
              ),
              OnBoardingColumn(
                image: 'assets/onboard2.png',
                text: 'Get a quote',
                text2:
                'Request price estimates from\nprofessionals to help you make informed\ndecisions with ease.',
              ),
              OnBoardingColumn(
                image: 'assets/onboard3.png',
                text: 'Work done',
                text2:
                'Sit back and relax while skilled experts\nefficiently take care of your tasks,\nensuring a job well done.',
              ),
            ],
          ),
        ],
      ),
    );
  }


}