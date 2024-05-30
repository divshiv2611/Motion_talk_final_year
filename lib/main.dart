
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:motion_talk/camera.dart';
import 'package:motion_talk/dashboard.dart';
import 'package:motion_talk/forgot.dart';
import 'package:motion_talk/login.dart';
import 'package:motion_talk/otp.dart';
import 'package:motion_talk/post.dart';
import 'package:motion_talk/register.dart';
import 'package:motion_talk/setPassword.dart';
import 'package:motion_talk/signtoText.dart';
import 'package:motion_talk/test.dart';
import 'dart:io' show Platform;

import 'package:motion_talk/test.dart';
// import 'package:motion_talk/translate.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: FirebaseOptions(

          ),
        )
      : await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => MyLogin(),
      'register': (context) => MyRegister(),
      'dashboard': (context) => MyDashboard(),
      'forgot': (context) => MyForgot(),
      'otp': (context) => MyOTP(),
      'setPassword': (context) => MyPassword(),
      'post': (context) => MyPost(),
      'camera': (context) => MyCamera(),
      'test': (context)=>testYourself(),
      'signtoText':(context)=>Dashboard(),
    },
  ));
}
