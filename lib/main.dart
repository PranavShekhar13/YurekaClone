//import 'package:YUREKA/Screens/splashscreen.dart';
//import 'package:Yureka_login/Login.dart';
//import 'package:Yureka_login/account.dart';
//import 'package:Yureka_login/chooseprofile.dart';
//import 'package:Yureka_login/Signup1.dart';
//import 'package:Yureka_login/Signup2.dart';
//import 'package:Yureka_login/account.dart';
import './splashscreen.dart';
import './swipecards.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home:HomePage(),
      home: SplashScreen(),
    );
  }
}
