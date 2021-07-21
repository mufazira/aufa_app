import 'package:aufa_app/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:aufa_app/login_page.dart';

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.add_alert),
              onPressed: ()=> debugPrint("notification")
          ),
        ],
        // The title text which will be shown on the action bar
        title: Text("AUFAs APP"),
      ),
      backgroundColor: Colors.brown,
      body: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.all(20.0),
              child: new MaterialButton(
                height: 50.0,
                minWidth: 150.0,
                color: Colors.deepOrangeAccent,
                textColor: Colors.white,
                child: new Text("To-Do"),
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  )
                },
                splashColor: Colors.redAccent,
              )),
          Padding(
              padding: EdgeInsets.all(20.0),
              child: new MaterialButton(
                height: 50.0,
                minWidth: 150.0,
                color: Colors.deepOrangeAccent,
                textColor: Colors.white,
                child: new Text("Done"),
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  )
                },
                splashColor: Colors.redAccent,
              )),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}