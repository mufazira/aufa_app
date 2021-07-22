import 'dart:async';

import 'package:aufa_app/MyHomePage.dart';
import 'package:flutter/material.dart';

class WelcomeSplashScreen extends StatefulWidget {
  @override
  _WelcomeSplashScreenState createState() => _WelcomeSplashScreenState();
}

class _WelcomeSplashScreenState extends State<WelcomeSplashScreen> {

  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 3), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [Color(0xFFF56194), Color(0xFFF35353)],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 150),
                  child: Image.asset("assets/schedule.png"),
                    height: 190,
                    width: 190,
                ),

                Container(
                  margin: EdgeInsets.only(top: 25),
                  child: Text(
                    "AUFA's App",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0,
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 25),
                  child: Text(
                    "Good Evening, User",
                    style: TextStyle(
                      color: Colors.white,
                      /*fontWeight: FontWeight.bold,*/
                      fontSize: 30.0,
                    ),
                  ),

                ),
              ],
            ),
            CircularProgressIndicator(),
          ],
        ),

      ),

    );
  }
}
