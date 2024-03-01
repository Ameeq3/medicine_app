import 'package:flutter/material.dart';

class ShopForgetPassword extends StatelessWidget {
  const ShopForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       color: Colors.cyan[800],

        child: Center(
          child: Container(
            height: 350,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width:0,color: Colors.white),
              color: Colors.transparent,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 70,
                left: 30,
                right: 30,
                // bottom:  MediaQuery.of(context).viewInsets.bottom,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                   const Text("Forgot Password?",style: TextStyle(
                       color: Colors.white,
                       fontSize: 20,
                       fontWeight: FontWeight.bold,
                    ),),
                   const  SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration:const InputDecoration(
                        hintText: "New Password",
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white
                          )
                        )
                      ),
                    ),
                 const   SizedBox(
                      height: 10,
                    ),
                     TextFormField(
                      decoration:const InputDecoration(
                        hintText: "Re-enter Password",
                        hintStyle: TextStyle(
                          color: Colors.white
                        ),
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white
                          )
                        )
                      ),
                    ),
                  const  SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 170,
                      height: 35,
                      child: ElevatedButton(
                       style:  ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                        backgroundColor:const Color.fromARGB(255, 13, 177, 18),
                       ),
                        onPressed: (){}, 
                        child:const Text("Reset",
                        style: TextStyle(
                         color: Colors.white,
                         fontSize: 15,
                         fontWeight: FontWeight.bold,
                         
                        ),
                        ), 
                        ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
   }
}
