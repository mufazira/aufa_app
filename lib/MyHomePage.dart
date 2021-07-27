import 'package:aufa_app/Dashboard.dart';
import 'package:aufa_app/ProfilePage.dart';
import 'package:aufa_app/Todo.dart';
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
  final List<Widget> _children = <Widget>[
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
        title: Text("AUFAs APP"),
        leading: GestureDetector(
          onTap: () => debugPrint("notification"),
          child: Icon(Icons.add_alert,),  // add custom icons also
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () => debugPrint("setting"),
                child: Icon(
                  Icons.settings,
                  size: 26.0,
                ),
              )
          ),
        ],
      ),
      body: /* _children[_currentIndex],*/
      Column(
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
            ]
        ),

       ),
            ),
            ],
      ),



      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, color: Colors.pinkAccent,),
        /*decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20))
        ),*/
          onPressed: () => {/*_displayDialog(context)*/},
          tooltip: 'Add Item',
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





