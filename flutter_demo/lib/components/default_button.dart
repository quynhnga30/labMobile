



import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/constants.dart';
import 'package:flutter_demo/screens/size_config.dart';

class DefaultButton extends StatelessWidget{

  const DefaultButton({
    Key? key,
    this.text,
    this.pressFunction,
  }) : super(key: key);
  final String? text;
  final Function? pressFunction;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: SizeConfig.getProperScreenHeight(inputHeight: 56),
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          //primary: Colors.white,
          backgroundColor: kPrimaryColor,

        ),
        onPressed: pressFunction as void Function()?,
        child: Text(
           text!,
            style: TextStyle(
               fontSize: SizeConfig.getProperScreenWidth(inputWidth: 18),
             color: Colors.white,
            ),

      ),
    )
    );
  }
}

