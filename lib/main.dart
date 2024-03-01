import 'package:flutter/material.dart';
import 'package:pill/SHOPKEEPER/PROFILE/profile.dart';
import 'package:pill/SHOPKEEPER/shoplogin/login.dart';
import 'package:pill/splash/splash.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:PSplash()
    );
  }
}

