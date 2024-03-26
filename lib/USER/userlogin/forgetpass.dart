import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({super.key});

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  String email = "";
  final emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  resetPassword() async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
        "Password Reset email has been sent!",
        style: TextStyle(fontSize: 18),
      )));
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text(
          "No user found that email",
          style: TextStyle(fontSize: 18),
        )));
      }
    }
  }

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
          child: Container(
            height: screenheight * 1 / 02,
            width: screenwidth * .9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 0, color: Colors.white),
              color: Colors.transparent,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 60,
                left: 30,
                right: 30,
                // bottom:  MediaQuery.of(context).viewInsets.bottom,
              ),
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: screenheight * .05,
                      ),
                      const Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: screenheight * .04,
                      ),
                      TextFormField(
                        controller: emailController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter a data";
                          }
                          if (value.isNotEmpty) {
                            String exp =
                                r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$';
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
                            labelText: "Enter Registered Email id",
                            labelStyle: TextStyle(color: Colors.white),
                            hintText: "abcd@gmail.com",
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 184, 217, 235)),
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white))),
                      ),
                      SizedBox(
                        height: screenheight * .03,
                      ),
                      SizedBox(
                        width: screenwidth * .99,
                        height: screenheight * .05,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                            backgroundColor:
                                const Color.fromARGB(255, 243, 237, 237),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              setState(() {
                                email = emailController.text;
                              });
                              resetPassword();
                            }
                          },
                          child: const Text(
                            "Send Email",
                            style: TextStyle(
                              color: Colors.black,
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
      ),
    );
  }
}
