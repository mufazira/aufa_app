import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.add_alert),
              onPressed: ()=> debugPrint("notification")
          ),
        ],
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      backgroundColor: Colors.brown[200],
      body: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.all(20.0),
              child: new MaterialButton(
                height: 100.0,
                minWidth: 150.0,
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                child: new Text("To-Do"),
              )),
          Padding(
              padding: EdgeInsets.all(20.0),
              child: new MaterialButton(
                height: 100.0,
                minWidth: 150.0,
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                child: new Text("Done"),
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