import 'package:flutter/material.dart';
import 'package:pill/USER/userlogin/login.dart';
import 'package:pill/admin/LOGIN/login.dart';

class OPtionPage extends StatelessWidget {
  const OPtionPage({super.key});

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
               width: 150,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  backgroundColor: Colors.black),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                }, 
              child: const Text("USER")),
            ),
           const SizedBox(height: 10,),
            SizedBox(
               width: 150,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  backgroundColor: Colors.black),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AdminLoginPage()));
                }, 
              child:const Text("ADMIN")),
            ),
            const SizedBox(height: 10,),
            SizedBox(
              width: 150,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  backgroundColor: Colors.black),
                onPressed: (){}, 
              child: const Text("DOCTOR")),
            ),
            const SizedBox(height: 10,),
            SizedBox(
              width: 150,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  backgroundColor: Colors.black),
                onPressed: (){}, 
              child: const Text("PHARMACY")),
            )
          ],
        ),
      ),
    );
  }
}