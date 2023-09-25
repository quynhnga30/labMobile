import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/DbProvider.dart';
import 'package:flutter_demo/screens/size_config.dart';
import 'package:flutter_demo/screens/splashscreen/SplashContent.dart';
import 'package:flutter_demo/service/Splash.dart';

import '../../components/default_button.dart';
import '../../models/Splash.dart';
import '../constants.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<StatefulWidget> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;

  late Future<List<Splash>> splashData;

  @override
  void initState() {

    final db = DbProvider().database;

    super.initState();
    splashData = loadSplashData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: splashData,
        builder: (context, snapshot) {
          print(snapshot);
          if (snapshot.hasData) {
            return SafeArea(
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Expanded(
                          flex: 3,

                          child: PageView.builder(
                            onPageChanged: (value) {
                              setState(() {
                                currentPage = value;
                              });
                            },
                            itemCount: snapshot.data!.length,
                            itemBuilder: (context, index) =>
                                SplashTopContent(
                                  snapshot.data![index].title,
                                  snapshot.data![index].text,
                                  snapshot.data![index].image,


                                ),
                          )),
                      Expanded(
                          flex: 2,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.getProperScreenWidth(
                                    inputWidth: 20)),
                            child: Column(
                              children: <Widget>[
                                Spacer(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: List.generate(
                                      snapshot.data!.length, (index) =>
                                      AnimatedContainer(
                                        duration: Duration(microseconds: 200),
                                        margin: EdgeInsets.only(right: 5.0),
                                        height: 6,
                                        width: (index == currentPage) ? 20 : 6,
                                        decoration: BoxDecoration(
                                          color: (index == currentPage)
                                              ? kPrimaryColor
                                              : kSeccondaryColor,
                                          borderRadius: BorderRadius.circular(
                                              3.0),

                                        ),
                                        // color: (index == currentPage) ? kPrimaryColor : kSeccondaryColor,
                                      )),
                                ),
                                SizedBox(height: SizeConfig
                                    .getProperScreenWidth(
                                    inputWidth: 200),),


                                // Spacer(flex: 3,),
                                DefaultButton(
                                  text: "Continue",
                                  pressFunction: () {
                                    //Navigator.pushNamed(context, SignInScreen.routeName);
                                  },
                                ),
                                Spacer(),
                              ],
                            ),
                          ))
                    ],
                  ), // cho anh tran ra man hinh
                )
            );
          } else {
            return Text('Load data error');
          }
        }
    );
  }
}
