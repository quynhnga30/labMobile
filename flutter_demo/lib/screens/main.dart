//  import 'package:flutter/material.dart';
//
//
// void main () {
//   runApp(const MyApp());
// }
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Flutter Demo',
//       home: HomePage(title:'My Home Page'),
//     );
//
//   }
//
// }
//
// class HomePage extends StatelessWidget{
//   final String title;
//   const HomePage({super.key, required this.title});
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Center(
//         child:Column(
//           children: <Widget>[
//
//
//
//
//
//           ],
//         )
//       )
//
//
//
// //         body: Center(
// //             child:Column(//widget
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: <Widget>[
// //                 Text('T2',style: TextStyle(fontSize: 20),),
// //                 Text('T3',style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),),
// //                 Text('T4',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
// //                 Text('T5'),
// // //image.assert()
// //               ],
// //
// //               // body: Center( //widget
// //               //   child: Text('Hello World',
// //               //   style: TextStyle(fontSize: 40)),
// //             )
// //         )
//     );
//   }
// }
//
// import 'package:flutter/material.dart';
//
// // Flutter code sample for [PageView].
//
// void main() => runApp(const PageViewExampleApp());
//
// class PageViewExampleApp extends StatelessWidget {
//   const PageViewExampleApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('Welcome to FreshFood')),
//         body: const PageViewExample(),
//       ),
//     );
//   }
// }
//
// class PageViewExample extends StatelessWidget {
//   const PageViewExample({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final PageController controller = PageController();
//     return PageView(
//       /// [PageView.scrollDirection] defaults to [Axis.horizontal].
//       /// Use [Axis.vertical] to scroll vertically.
//       controller: controller,
//       children: const <Widget>[
//         Center(
//           child: Text('First Page'),
//         ),
//         Center(
//           child: Text('Second Page'),
//         ),
//         Center(
//           child: Text('Third Page'),
//         ),
//       ],
//     );
//
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/app_theme.dart';
import 'package:flutter_demo/screens/routeConfig.dart';
import 'package:flutter_demo/screens/splashscreen/SplashScreen.dart';

import 'ListTitleDemo/ListTitleExampleScreen.dart';
import 'Home/home.dart';
import 'Login/FormLoginScreens.dart';
import 'RouteDemoScreen/RouteDemoScreen.dart';

void main() {
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Flutter Demo',
//       home: HomePage(title:'My Home Page'),
//     );
//
//   }
//
// }
class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme(context),
      title: 'Flutter Demo',
      initialRoute: SplashScreen.routerName,
       routes: routes,
     // home: const LoginPage(),
     //  initialRoute: '/home', // man hinh khi start app
     //  routes: {
     //
     //    '/home': (context) => HomeScreen(),
     //    '/login': (context) => FormLoginScreen(),
     //    '/homes' : (context) => HomesScreen(),
     //    '/favourites' : (context) => FavouriteScreen(),
     //    //mapping giua duong dan va man hinh
     //    '/news' : (context) => NewsScreen(),
     //    '/listTitleExampleScreen' : (context) => ListTitleExampleScreen(),
     //  },
      //home: const HomeScreen(),
    );
  }
}

