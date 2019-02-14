import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:sshl/main.dart';

class FirstSplashScreenMain extends StatefulWidget {
  @override
  _FirstSplashScreen createState() => new _FirstSplashScreen();
}

class _FirstSplashScreen extends State<FirstSplashScreenMain> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home:SplashScreen(
      seconds: 10,
      navigateAfterSeconds: new MainScreen(),
      title: new Text('Simple Steps Healthy Life',
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
        fontStyle: FontStyle.italic
      ),),
      image: new Image.network('https://i.imgur.com/TyCSG9A.png'),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      onClick: ()=>print("Flutter Egypt"),
      loaderColor: Colors.red
    ),);
  }
}