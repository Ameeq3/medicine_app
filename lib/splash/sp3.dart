import 'package:flutter/material.dart';
import 'package:pill/splash/log_option.dart';

class SpThree extends StatelessWidget {
  const SpThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 13, 59, 97),
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
                 backgroundColor: Colors.transparent,
                radius: 90,
                backgroundImage: AssetImage("assets/clock.png",),
              ),
              const SizedBox(
                height: 25,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Share Detailed report ",
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
              const Text(
                "with your loved ones",
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "It's easy and simple ",
                style: TextStyle(fontSize: 15, color: Colors.black87),
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
                          color: Colors.grey[400]),
                    ),
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
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 130,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        backgroundColor: Colors.teal[500]),
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const OPtionPage()));
                    },
                    child: const Text("Get Started")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
