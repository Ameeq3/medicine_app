import 'package:flutter/material.dart';
import 'package:pill/splash/sp3.dart';

class SpTwo extends StatelessWidget {
  const SpTwo({super.key});

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
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 140,
              ),
              const CircleAvatar(
                backgroundColor: Colors.amber,
                radius: 90,
                
               backgroundImage: AssetImage("assets/capsules.jpg"),
              ),
              const SizedBox(
                height: 25,
              ),
              
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Add medicines by yourself ",
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
              const Text(
                "Or Scan Prescription",
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
             const SizedBox(height: 10,),
               const Text(
                "Its easy and simple ",
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 13,
                    width: 13,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: Colors.grey[400]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      height: 13,
                      width: 13,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      height: 13,
                      width: 13,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Colors.grey[400]),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 40,
                width: 120,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      backgroundColor: Colors.teal[500]),
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const SpThree()));
                  },
                  label: const Text(
                    "Next",
                    style: TextStyle(fontSize: 16),
                  ),
                  icon: const Icon(
                    Icons.chevron_right_sharp,
                    size: 28,
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const SpThree()));
                  },
                  child: const Text(
                    "Skip",
                    style: TextStyle(color: Colors.grey, fontSize: 17),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
