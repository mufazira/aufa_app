import 'package:aufa_app/login_page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();

}

class InitState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 100),
                      child: Image.asset("assets/schedule.png"),
                      height: 150,
                      width: 150,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      alignment: Alignment.center,
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black87
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 35),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],
                boxShadow: [BoxShadow(
                    offset: Offset(0,10),
                    color: Color(0xffEEEEEE)
                )],
              ),
              alignment: Alignment.center,
              child: TextField(
                cursorColor: Color(0xffd4233e),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.person,
                    color: Color(0xffd4233e),
                  ),
                  hintText: "Enter User ID",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 25),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],
                boxShadow: [BoxShadow(
                    offset: Offset(0,10),
                    color: Color(0xffEEEEEE)
                )],
              ),
              alignment: Alignment.center,
              child: TextField(
                cursorColor: Color(0xffd4233e),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.email,
                    color: Color(0xffd4233e),
                  ),
                  hintText: "Enter Email",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 25),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],
                boxShadow: [BoxShadow(
                    offset: Offset(0,10),
                    color: Color(0xffEEEEEE)
                )],
              ),
              alignment: Alignment.center,
              child: TextField(
                obscureText: true,
                cursorColor: Color(0xffd4233e),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.lock,
                    color: Color(0xffd4233e),
                  ),
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: Colors.black87,
                  ),
                  hintText: "Enter Password",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 25),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],
                boxShadow: [BoxShadow(
                    offset: Offset(0,10),
                    color: Color(0xffEEEEEE)
                )],
              ),
              alignment: Alignment.center,
              child: TextField(
                obscureText: true,
                cursorColor: Color(0xffd4233e),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.lock,
                    color: Color(0xffd4233e),
                  ),
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: Colors.black87,
                  ),
                  hintText: "Re-Enter Password",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),

            GestureDetector(
              onTap: () => {
                /*write your code here*/
              },
              child: Container(
                margin: EdgeInsets.only(left: 50, right: 50, top: 50),
                padding: EdgeInsets.only(left: 30, right: 30),
                alignment: Alignment.center,
                height: 54,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [(new Color(0xffd4233e)), (new Color(0xffde3650))],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                  boxShadow: [BoxShadow(
                      offset: Offset(0,10),
                      color: Color(0xffEEEEEE)
                  )],
                ),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  GestureDetector(
                    onTap: () => {
                      Navigator.pop(context)
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          color: Color(0xffd4233e)
                      ),
                    ),
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}