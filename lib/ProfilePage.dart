import 'package:aufa_app/Dashboard.dart';
import 'package:flutter/material.dart';

int _selectedPageIndex = 0;

var _pages = [
  Dashboard(),
  ProfilePage(),
];
class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}
class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build (BuildContext context) {
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
        title: Text("DASHBOARD"),
      ),

      body: new Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [Color(0xFFF56194), Color(0xFFF35353)],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar (
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_outlined),
            title: Text("Dashboard"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text("Profile"),
          ),
        ],
        currentIndex: _selectedPageIndex,
        onTap: (index) {
          setState(() {
            _selectedPageIndex = index;
          });

        },
      ),
    );
  }
}