import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pill/USER/NavBar/fluid_navbar.dart';
import 'package:pill/USER/userlogin/forgetpass.dart';
import 'package:pill/USER/userlogin/signup.dart';
final _formKey = GlobalKey<FormState>();


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "", password = "";
  final emailController = TextEditingController();

  final passwordController = TextEditingController();
  userLogin()async{  
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const FluidNavBarDemo()));
    }on FirebaseAuthException catch(e){
      if (e.code=='user-not-found') {
         ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(
                content: Text(
          "No User Found for that Email",
          style: TextStyle(fontSize: 18),
        )));        
      }else if(e.code =='wrong-password'){
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(
                content: Text(
          "wrong password",
          style: TextStyle(fontSize: 18),
        )));
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    // double screenwidth = MediaQuery.of(context).size.width;
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
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: screenheight * .20,
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
                SizedBox(
                   height:screenheight * .10,
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
                SizedBox(
                  height: screenheight * .03,
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
                          gradient: const LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment(0.5, 1),
                            colors: <Color>[
                              Color(0xFFC5CAE9),
                              Color(0xFF9FA8DA),
                              Color(0xFF7986CB),
                              Color(0xFF5C6BC0),
                              Color(0xFF3F51B5)
                            ],
                            tileMode: TileMode.mirror,
                          ),
                          borderRadius: BorderRadius.circular(90),
                          color: Colors.white),
                      child: IconButton(
                          onPressed: () {
                            
                            if (_formKey.currentState!.validate()) {
                            setState(() {
                               email = emailController.text;
                               password = passwordController.text;
                             });
                            }
                            userLogin();
                          },
                          icon: const Icon(
                            Icons.arrow_right_alt_outlined,
                            size: 30,
                            color: Colors.white,
                          )),
                    )
                  ],
                ),
                 SizedBox(
                  height: screenheight * .13,
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
                                    builder: (context) => const SignUp()));
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgotPass()));
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
