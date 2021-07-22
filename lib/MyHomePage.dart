import 'package:aufa_app/Dashboard.dart';
import 'package:aufa_app/ProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }


  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _pages = <Widget>[
    Icon(
      Icons.dashboard,
      size: 150,
    ),
    Icon(
      Icons.person_outlined,
      size: 150,
    ),
  ];
  Widget initWidget() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[300],
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.add_alert),
              onPressed: ()=> debugPrint("notification")
          ),
        ],
        // The title text which will be shown on the action bar
        title: Text("AUFAs APP"),
      ),
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
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(20.0),
                child: new MaterialButton(
                  height: 50.0,
                  minWidth: 150.0,
                  color: Colors.deepOrange[400],
                  textColor: Colors.white,
                  child: new Text("To-Do"),
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Dashboard()),
                    )
                  },
                  splashColor: Colors.redAccent,
                )),
            Padding(
                padding: EdgeInsets.all(20.0),
                child: new MaterialButton(
                  height: 50.0,
                  minWidth: 150.0,
                  color: Colors.deepOrange[400],
                  textColor: Colors.white,
                  child: new Text("Done"),
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilePage()),
                    )
                  },
                  splashColor: Colors.redAccent,
                )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 20,
        selectedIconTheme: IconThemeData(color: Colors.pink),
        selectedItemColor: Colors.pink,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_outlined),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),

    );
  }
}



