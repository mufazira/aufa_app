import 'package:aufa_app/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LoginUnsuccessfulMessage extends StatelessWidget {
  final String title, description, buttontext;
  final Image image;

  LoginUnsuccessfulMessage({this.title, this.description, this.buttontext, this.image});
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
          padding: EdgeInsets.only(top:25, bottom: 25, left: 20, right: 20),
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
                "Log In Failed!",
                style: TextStyle(
                  color: Color(0xFFE23037),
                  fontSize: 24.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 24.0),
              Text(
                  "Your ID and/or password do not match.",
                  style: TextStyle(fontSize: 16.0)),
              SizedBox(height: 30.0),
              GestureDetector(
                onTap: () => {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => LoginPage()
                  ))
                },
                child: Container(
                  margin: EdgeInsets.only(left: 90, right: 90),
                  alignment: Alignment.center,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xffd4233e),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    "Retry",
                    style: TextStyle(
                        color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
