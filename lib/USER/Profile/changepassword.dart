import 'package:flutter/material.dart';
import 'package:pill/USER/Profile/profile.dart';

class ChangePass extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final confirmPass = TextEditingController();
   ChangePass({super.key});

  @override                                                            
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
         // end: Alignment(0.8, 1),
          colors: <Color>[
            Color(0xFFC5CAE9),
             Color(0xFFC5CAE9),
            // Color(0xFF7986CB),
            // Color(0xFF5C6BC0),
            // Color(0xFF3F51B5),
          ],
          tileMode: TileMode.mirror,
        )),
        ),
        elevation: 0,
      ),
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
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              
              children: [
                const SizedBox(
                  height: 30,
                ),
               const Text("Change Password",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
               const SizedBox(
                  height: 20,
                ),
               const CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 77,
                    backgroundImage: AssetImage("assets/profile.jpg"),
                  ),
                ),
               const SizedBox(
                  height: 50,
                ),
              
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: TextFormField(
                      controller: passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter a data";
                        }
                        if (value.isNotEmpty) {
                          String pattern =
                              r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$';
                          RegExp regEx = RegExp(pattern);
                          if (!regEx.hasMatch(value)) {
                            return "enter valid password";
                          } else {
                            return null;
                          }
                        }
                        return null;
                      },
                     decoration:const InputDecoration(
                      fillColor: Colors.transparent,
                      labelText: "New Password",
                      labelStyle: TextStyle(
                        color: Colors.white
                      ),
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),filled: true
                    ),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                  child: TextFormField(
                      controller: confirmPass,
                           validator: (value){
                              if (value == null || value.isEmpty) {
                                return 'Empty';
                              }
                              if(value != passwordController.text) {
                                return 'Not Match';
                              }
                              return null;
               },
                    decoration: const InputDecoration(
                      fillColor: Colors.transparent,
                      border: OutlineInputBorder(),
                      labelText: "Confirm Password",
                      labelStyle: TextStyle(
                        color: Colors.white
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),filled: true
                    ),
                    
                  ),
                ),
               const SizedBox(height: 25,),
                SizedBox(
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      backgroundColor: const Color.fromARGB(255, 57, 144, 182)),
                    onPressed: (){
                      if (_formKey.currentState!.validate()){
                        Navigator.of(context).pop(MaterialPageRoute(builder: (context)=>const Profile()));
                      }
                      
                    },
                   child: const Text("Submit",
                   style: TextStyle(
                    fontSize: 16
                   ),)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}