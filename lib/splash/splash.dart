import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pill/splash/sp1.dart';


class PSplash extends StatefulWidget {
  const PSplash({super.key});

  @override
  State<PSplash> createState() => _PSplashState();
}

class _PSplashState extends State<PSplash> {
  void splashMethod(){
    Timer(const Duration(seconds: 2,milliseconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const SpOne()),);
     });
  }
  @override
  void initState(){
    super.initState();
    splashMethod();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Container(
        height: double.infinity,
        width: double.infinity,
         decoration: const BoxDecoration(
        gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment(0.8, 1),
      colors: <Color>[
        Color(0xFFC5CAE9),
        Color(0xFF9FA8DA),
        Color(0xFF7986CB),
        Color(0xFF5C6BC0),
        Color(0xFF3F51B5),
      ],
      tileMode: TileMode.mirror,
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset("assets/3.png",
              height: 300,
              width: 300,)
              
            ),
          //   Text("Every Dose!...",
          //  style: GoogleFonts.gaegu(
          //   fontSize: 25,
          //   fontWeight: FontWeight.bold,
          //   color: Colors.amber
          //  )
          //  ),
          ],
        ),
      ),
    );
  }
}