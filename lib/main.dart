import 'package:aufa_app/login_page.dart';
import 'package:aufa_app/signup_success_message.dart';
import 'package:aufa_app/welcome_splash_screen.dart';
import 'package:flutter/material.dart';
import 'signup_success_message.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(new MaterialApp(
    home: new LoginPage(),

  ));
}