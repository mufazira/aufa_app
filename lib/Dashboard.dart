import 'package:aufa_app/Dashboard.dart';
import 'package:aufa_app/ProfilePage.dart';
import 'package:flutter/cupertino.dart';
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
      body: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFFF56194), Color(0xFFF35353)],
                  )
              ),
              child: Container(
                width: double.infinity,
                height: 350.0,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://qph.fs.quoracdn.net/main-qimg-2b21b9dd05c757fe30231fac65b504dd',
                        ),
                        radius: 50.0,
                      ),
                      Positioned
                        (bottom: 1, right: 1 ,child: Container(
                        height: 40, width: 40,
                        child: Icon(Icons.add_a_photo, color: Colors.pinkAccent,),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                      )),

                      Positioned(
                          top: 170,
                          child: Text('Username',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          )
                      ),
                      Positioned(
                          top: 200,
                          child: Text('ID Number',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          )
                      ),
                    ],
                  ),
                ),
              )
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex:2,
                    child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: new MaterialButton(
                          height: 50.0,
                          minWidth: 150.0,
                          color: Colors.deepOrange[400],
                          child: new Text("To-Do", style: TextStyle(fontSize: 20.0, color: Colors.white),),
                          onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Dashboard()),
                            )
                          },
                          splashColor: Colors.redAccent,
                        )),
                  ),
                  Expanded(
                      flex:2,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: new MaterialButton(
                                  height: 50.0,
                                  minWidth: 150.0,
                                  color: Colors.deepOrange[400],
                                  child: new Text("Done", style: TextStyle(fontSize: 20.0, color: Colors.white),),
                                  onPressed: () => {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => ProfilePage()),
                                    )
                                  },
                                )),
                          )
                        ],
                      )
                  ),

                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: 300.00,

            child: RaisedButton(
                onPressed: (){},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)
                ),
                elevation: 0.0,
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [Colors.pink,Colors.pinkAccent]
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Container(
                    constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: Text("Contact me",
                      style: TextStyle(color: Colors.white, fontSize: 26.0, fontWeight:FontWeight.w300),
                    ),
                  ),
                )
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar (
        backgroundColor: Colors.pinkAccent,
        selectedFontSize: 20,
        selectedIconTheme: IconThemeData(color: Colors.amberAccent),
        selectedItemColor: Colors.amberAccent,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_outlined),
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