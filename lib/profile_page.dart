import 'package:aufa_app/Dashboard.dart';
import 'package:aufa_app/ProfilePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        title: Text("AUFA's APP"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Image(
                  height: MediaQuery.of(context).size.height/3,
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://www.schemecolor.com/images/color-image-thumb.php?tx&w=600&h=316&hex=F06292'),
                ),
                Positioned(
                    top: 30,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(''
                          'https://qph.fs.quoracdn.net/main-qimg-2b21b9dd05c757fe30231fac65b504dd'),
                    )
                ),
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
          ],
        ),
      ),
    );
    /*return Column(
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Image(
              height: MediaQuery.of(context).size.height/3,
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://images.pexels.com/photos/258109/pexels-photo-258109.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
            ),
            Positioned(
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(''
                      'https://qph.fs.quoracdn.net/main-qimg-2b21b9dd05c757fe30231fac65b504dd'),
                ))
          ],
        ),
        Container(
          child: Text('Hello',
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),

          ),
        )
      ],
    );*/
  }
}