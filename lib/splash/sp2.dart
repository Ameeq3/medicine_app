import 'package:flutter/material.dart';
import 'package:pill/DOCTOR/login/login.dart';

class SpTwo extends StatelessWidget {
  const SpTwo({super.key});

  @override
  Widget build(BuildContext context) {
   double screenwidth = MediaQuery.of(context).size.width;
            double screenheight = MediaQuery.of(context).size.height;
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
              SizedBox(
                height: screenheight * .19,
              ),
              const CircleAvatar(
                radius: 90,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage("assets/doctor2.png"),
              ),
              SizedBox(
                height: screenheight * .03,
              ),
              Text(
                "Login As DOCTOR",
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo[900]),
              ),
              // const SizedBox(
              //   height: 10,
              // ),
              // const Text(
              //   "Never forget to take ",
              //   style: TextStyle(fontSize: 17, color: Colors.white),
              // ),
              // const Text(
              //   "your medicines on time.",
              //   style: TextStyle(fontSize: 17, color: Colors.white),
              // ),
              SizedBox(
                height:screenheight * .09 ,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 13,
                    width: 13,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color:Colors.grey[400] ),
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
              SizedBox(
                height:screenheight * .06,
              ),
              

              SizedBox(
                height: screenheight * .02,
              ),
             
          

             SizedBox(
                height: screenheight * .02,
              ),

              SizedBox(
               height: screenheight * .06,
                width: screenwidth * .4,
                child: ElevatedButton(
                   style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        backgroundColor: Colors.teal[500]),
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>DoctorLoginPage()));
                  }, 
                  child:const Text("Login/SignUp",style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),)
                  ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
