import 'package:flutter/material.dart';
import 'package:hybrismarketing/screens/home/home.dart';
import 'package:hybrismarketing/screens/signin/signin.dart';
import 'package:hybrismarketing/screens/signup/signup.dart';
import 'package:hybrismarketing/screens/slideshow/slideshow.dart';

class Routes {
  final routes = <String, WidgetBuilder>{
    "/SlideShow": (BuildContext context) => SlideShow(),
    "/Home": (BuildContext context) => Home(),
    "/SignUp": (BuildContext context) => SignUp(),
    "/SignIn": (BuildContext context) => SignIn(),
  };

  Routes() {
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColorLight: Color.fromARGB(255, 66, 97, 178),
        primaryColorDark: Color.fromARGB(255, 33, 49, 89),
        brightness: Brightness.light,
        primaryColor: Color.fromARGB(255, 34, 49, 88),
        accentColor: Color.fromARGB(255, 169, 204, 64),
      ),
      routes: routes,
      home: Home(),
    ));
  }
}
