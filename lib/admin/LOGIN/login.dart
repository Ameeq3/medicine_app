import 'package:flutter/material.dart';
import 'package:pill/USER/NavBar/fluid_navbar.dart';
import 'package:pill/USER/userlogin/forgetpass.dart';
import 'package:pill/USER/userlogin/signup.dart';
import 'package:pill/admin/LOGIN/forget.dart';
import 'package:pill/admin/LOGIN/signup.dart';final _formKey = GlobalKey<FormState>();


class AdminLoginPage extends StatelessWidget {
  AdminLoginPage({super.key});
  
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.teal[700]),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 160,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 170),
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Colors.white),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 220, top: 10),
                  child: Text(
                    "Back!",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 45, left: 45, bottom: 15),
                  child: TextFormField(
                    controller: emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter a data";
                      }
                      if (value.isNotEmpty) {
                        String exp = r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$';
                        RegExp regExp = RegExp(exp);
                        String emailID = emailController.text;
                        if (!regExp.hasMatch(emailID)) {
                          return "enter a valid email";
                        } else {
                          return null;
                        }
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white
                        )
                      ),
                        filled: true,
                         labelText: "Email",
                         labelStyle: TextStyle(
                          color: Colors.white
                         ),
                          hintText: "@gmail.com",
                          hintStyle: TextStyle(
                            color: Colors.white
                          )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45, right: 45, top: 10),
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
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white
                        )
                      ),
                        filled: true,
                        labelText: "Password",
                        labelStyle: TextStyle(
                          color: Colors.white
                        ),
                        hintText: "enter password",
                        hintStyle: TextStyle(
                          color: Colors.white
                        )),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 45),
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 50),
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                          
                          borderRadius: BorderRadius.circular(90),
                          color: Colors.green[300]),
                      child: IconButton(
                          onPressed: () {
                            
                            if (_formKey.currentState!.validate()) {
                             // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const FluidNavBarDemo()));
                            }
                          },
                          icon: const Icon(
                            Icons.arrow_right_alt_outlined,
                            size: 30,
                            color: Colors.white,
                          )),
                    )
                  ],
                ),
                const SizedBox(
                  height: 110,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 45),
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AdminSignUp()));
                          },
                          child: const Text(
                            "Sign up",
                            style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                                fontSize: 15,
                                fontWeight: FontWeight.normal),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 35),
                      child: InkWell(
                          onTap: () {
                           
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const AdminFogotPassword()));
                          },
                          child: const Text(
                            "forget Password",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.normal),
                          ),),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
