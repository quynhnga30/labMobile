

import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/size_config.dart';

import '../constants.dart';

class SplashTopContent extends StatelessWidget {
  final String? title, textContent, image;

  SplashTopContent(this.title, this.textContent, this.image);

  @override
  Widget build(BuildContext context) {
    return (SizeConfig.orientation == Orientation.portrait)
        ? localPortraitTopContent(
        title, textContent, image)
        : Container(
        color: Colors.green,
    );
  }

  @override
  Widget localLanscapeTopContent(String? title, String? textContent, String? image) {
    return Row(
      children: [
        Spacer(),
        Text(
            title!,
            style:TextStyle(
              fontSize: SizeConfig.getProperScreenHeight(inputHeight: 30),
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            )
        ),
        Spacer(flex: 4),
        Text(
          textContent!,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: SizeConfig.getProperScreenHeight(inputHeight: 14),
          ),
          // style: TextStyle(
          //   fontSize: 36,
          //   color: kPrimaryColor,
          //   fontWeight: FontWeight.bold,
          // ),
        ),
        Image.asset(
          image!,
          height: SizeConfig.getProperScreenWidth(inputWidth: 300),
          width: SizeConfig.getProperScreenHeight(inputHeight: 250) ,
        )

      ],
    );

  }


  @override
  Widget localPortraitTopContent(String? title, String? textContent, String? image) {
     return Column(
       children: [
         Spacer(),
         Text(
           title!,
           style:TextStyle(
             fontSize: SizeConfig.getProperScreenWidth(inputWidth: 36),
             color: kPrimaryColor,
             fontWeight: FontWeight.bold,
           )
         ),
         Spacer(flex: 1),
         Text(
           textContent!,
           textAlign: TextAlign.center,
           style: TextStyle(
             fontSize: SizeConfig.getProperScreenWidth(inputWidth: 14),
           ),
           // style: TextStyle(
           //   fontSize: 36,
           //   color: kPrimaryColor,
           //   fontWeight: FontWeight.bold,
           // ),
         ),
         Image.asset(
           image!,
           height: SizeConfig.getProperScreenHeight(inputHeight: 300),
           width: SizeConfig.getProperScreenWidth(inputWidth: 250) ,
         )


       ],
     );
  }

}