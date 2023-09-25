import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWith;
  static late double screenHeight;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData.size.height;
    screenWith = _mediaQueryData.size.width;
    orientation = _mediaQueryData.orientation;

  }
   static double getProperScreenHeight({ required double inputHeight, double? inputDesign}){
    //inputHeight : chieu cao anh truyen vao
     //InputDesign : chieu cao theo designer
     inputDesign = inputDesign == null ? 890 : inputDesign;

     return ((inputHeight / screenHeight) * inputDesign);

   }
   static double getProperScreenWidth({ required double inputWidth, double? inputDesign}){
    //inputHeight : chieu cao anh truyen vao
    //InputDesign : chieu cao theo designer
    inputDesign = inputDesign == null ? 411 : inputDesign;
    return ((inputWidth / screenWith) * inputDesign);

  }
}