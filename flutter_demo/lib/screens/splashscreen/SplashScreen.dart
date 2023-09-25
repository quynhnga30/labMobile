

import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/size_config.dart';
import 'package:flutter_demo/screens/splashscreen/body.dart';

class SplashScreen extends StatelessWidget {
  static final String routerName = '/splash';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Body();
  }
}