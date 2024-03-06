import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pill/firebase_options.dart';
import 'package:pill/splash/splash.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        primaryColor: Colors.white
      ),
      home: const PSplash(),
    );
  }
}

