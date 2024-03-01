import 'package:flutter/material.dart';
import 'package:pill/SHOPKEEPER/nav/navbar.dart';

class ShopSignUp extends StatelessWidget {
  ShopSignUp({super.key});
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final licensController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.cyan[800],
        ),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 110,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 195),
                  child: Text(
                    "Create",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Colors.white),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 170, top: 10),
                  child: Text(
                    "Account",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 45, left: 45, bottom: 25),
                  child: TextFormField(
                    controller: nameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter a name";
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white
                        )
                      ),
                        filled: true, labelText: "Name",
                        labelStyle: TextStyle(
                          color: Colors.white
                        ),
                         hintText: "name",
                         hintStyle: TextStyle(
                          color: Colors.white
                         )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 45, left: 45, bottom: 15),
                  child: TextFormField(
                    controller: emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter email";
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
                        filled: true, labelText: "Email",
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
                        return "Please enter password";
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
                    decoration: const InputDecoration(
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
                        )
                        ),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                
                Padding(
                  padding: const EdgeInsets.only(right: 45, left: 45, bottom: 25),
                  child: TextFormField(
                    controller: licensController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter a name";
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white
                        )
                      ),
                        filled: true, labelText: "License Id :",
                        labelStyle: TextStyle(
                          color: Colors.white
                        ),
                         hintText: "License Id",
                         hintStyle: TextStyle(
                          color: Colors.white
                         )),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 45),
                      child: Text(
                        "Sign up",
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
                          color: Colors.cyan[700]),
                      child: IconButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const ShopNavBare()));
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
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 45),
                      child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            "Sign in",
                            style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                                fontSize: 15,
                                fontWeight: FontWeight.normal),
                          )),
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
