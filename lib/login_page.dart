import 'MyHomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'signup_page.dart';

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<LoginPage>{
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
              /*height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
                color: Color(0xffF5591F),
                gradient: LinearGradient(
                  colors: [(new Color(0xffF5591F)), (new Color(0xffF2861E))],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
              ),*/
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 150),
                      child: Image.asset("assets/schedule.png"),
                      height: 150,
                      width: 150,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      alignment: Alignment.center,
                      child: Text(
                        "Sign In AUFA's App",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black87
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 50, right: 50, top: 35),
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
                          labelText: 'User ID:',
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 50, right: 50, top: 30),
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
                          labelText: 'Password:',
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 20, right: 20),
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        child: Text("Forgot Password?"),
                        onTap: () => {
                        },
                      ),
                    ),

                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyHomePage()),
                          );
                        },

                        child: Container(
                        margin: EdgeInsets.only(left: 120, right: 120, top: 20),
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
                          "Sign In",
                          style: TextStyle(
                            color: Colors.white, fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't Have Account?", style: TextStyle(
                            fontSize: 15,
                          ),),
                          GestureDetector(
                            onTap: () => {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => SignUpPage()
                              ))
                            },
                            child: Text(
                              "  Sign Up Now!",
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
            )
          ],
        ),
      ),
    );
  }

}


