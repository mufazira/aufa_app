import 'package:aufa_app/Dashboard.dart';
import 'package:aufa_app/ProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:aufa_app/placeholder_widget.dart';


class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<MyHomePage>{


  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

void _onTabTapped(int index){
    setState(() {
      _currentIndex = index;
    });
}
int _currentIndex = 0;
  final List<Widget> _pages = <Widget>[
    Icon(
      Icons.dashboard_outlined,
      size: 150,
    ),

    Icon(
      Icons.person_outlined,
      size: 150,
    ),
    PlaceholderWidget(Colors.purpleAccent),
    PlaceholderWidget(Colors.blueAccent),
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
      body: /* _children[_currentIndex], */
       new Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [Color(0xFFF56194), Color(0xFFF35353)],
          ),
        ),
          child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
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
                    /*Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Dashboard()),
                    )*/
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
                                /*Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ProfilePage()),
                                )*/
                              },
                            )),
                      )
                    ],
                  )
              ),
        ]

         ),

       ),


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        backgroundColor: Colors.pinkAccent,
        selectedFontSize: 20,
        selectedIconTheme: IconThemeData(color: Colors.amberAccent),
        selectedItemColor: Colors.amberAccent,
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
      ),
    );
  }
}






