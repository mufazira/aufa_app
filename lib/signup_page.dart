import 'package:aufa_app/login_page.dart';
import 'package:flutter/material.dart';
import 'signup_success_message.dart';

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
      body: Center(
        child: Column(
          children: [
            Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 80),
                      child: Image.asset("assets/schedule.png"),
                      height: 150,
                      width: 150,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      alignment: Alignment.center,
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black87
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 50, right: 50, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],

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
                  labelText: 'User ID:',
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 50, right: 50, top: 15),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],

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
                  labelText: 'Email:',
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 50, right: 50, top: 15),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],

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
                  labelText: 'Password:',
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 50, right: 50, top: 15),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],

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
                  labelText: 'Re-enter your password:',
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),

            GestureDetector(
              onTap: () => {
              showDialog(context: context, builder: (context) => SignUpSuccessMessage(
              title: "Sign Up Successful !",
              description: "Congratulations, your account have been successfully created."
              ))
                /*write your code here*/
              },
              child: Container(
                margin: EdgeInsets.only(left: 120, right: 120, top: 15),
                padding: EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [(new Color(0xffd4233e)), (new Color(0xffde3650))],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],

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
                  Text("Already have an account?", style: TextStyle(
                     fontSize: 15,
                  ),),

                  GestureDetector(
                    onTap: () => {
                      Navigator.pop(context)
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          color: Color(0xffd4233e), fontSize: 15,
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