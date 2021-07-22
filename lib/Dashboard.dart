import 'package:aufa_app/ProfilePage.dart';
import 'package:flutter/material.dart';

int _selectedPageIndex = 0;

var _pages = [
  Dashboard(),
  ProfilePage(),
];
class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}
class _DashboardState extends State<Dashboard> {

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
              icon: Icon(Icons.dashboard),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Profile',
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