import 'package:fanbase/ui/authentication.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class myApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FanPage',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SplashScreen(
            seconds: 5,
            navigateAfterSeconds: Authentication(),
            title: new Text(
              'Tomy Fanpage',
              style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.white),
            ),
            image: new Image.asset('assets/splash.png'),
            photoSize: 100.0,
            backgroundColor: Colors.blue,
            styleTextUnderTheLoader: new TextStyle(),
            loaderColor: Colors.white));
  }
}
