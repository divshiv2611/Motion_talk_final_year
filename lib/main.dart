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
import 'dart:io' show Platform;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: FirebaseOptions(
            apiKey: "AIzaSyDMRZiKMOSegRw9bZhU3vNoI_E5qPVGq8w",
            appId: "1:928254517525:android:b9e6f6bbb912ffdd98c91c",
            messagingSenderId: "928254517525",
            projectId: "motion-talk-ef0b5",
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
    },
  ));
}
