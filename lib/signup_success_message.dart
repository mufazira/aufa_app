import 'package:aufa_app/welcome_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'signup_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpSuccessMessage extends StatelessWidget {
  final String title, description, buttontext;
  final Image image;

  SignUpSuccessMessage({this.title, this.description, this.buttontext, this.image});
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 150, left: 20, right: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(17),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                offset: Offset(0.0, 10.0),
              )
            ]
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  color: Color(0xFF35825C),
                  fontSize: 24.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 24.0),
              Text(description, style: TextStyle(fontSize: 16.0)),
              SizedBox(height: 30.0),
              Align(
                alignment: Alignment.bottomRight,
                child: FlatButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => WelcomeSplashScreen()
                      ));
                    },
                  child: Text("Continue"),
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: 20,
          left: 25,
          right: 16,
          child: Container(
            child: Image.asset("assets/successful_icon.png"),
            height: 90,
            width: 90,
        ),

          /*child: CircleAvatar(
            backgroundColor: Colors.blueAccent,
            ,
            radius: 50,
          ),
        )*/
        ),
      ],
    );
  }
}
