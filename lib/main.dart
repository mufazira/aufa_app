import 'package:aufa_app/ProfilePage.dart';
import 'package:aufa_app/login_page.dart';
import 'package:aufa_app/profile_page.dart';
import 'package:aufa_app/signup_success_message.dart';
import 'package:aufa_app/welcome_splash_screen.dart';
import 'package:flutter/material.dart';
import 'signup_success_message.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/*void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}*/
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(new MaterialApp(
    home: new LoginPage(),


  ));
}