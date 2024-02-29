import 'package:flutter/material.dart';

class ShopKeeperRegister extends StatefulWidget {
  const ShopKeeperRegister({super.key});

  @override
  State<ShopKeeperRegister> createState() => _RegistrationState();
}

class _RegistrationState extends State<ShopKeeperRegister> {
  final _formKey = GlobalKey<FormState>();

  final _username = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _license = TextEditingController();
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
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                 const Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Text("Shopkeeper Registration",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff04516f),
                    ),),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                      color: Colors.white10,
                    ),
                    child: const Icon(
                      Icons.shopping_cart,
                      size: 80,
                      color: Color(0xff04516f),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return " please enter your user name";
                      } else if (value.isNotEmpty) {
                        String exp = r'';
                        RegExp regex = RegExp(exp);
                        String userId = _username.text;
                        if (!regex.hasMatch(userId)) {
                          return " please enter a valid user name";
                        } else {
                          return null;
                        }
                      }
                      return null;
                    },
                    obscureText: false,
                    controller: _username,
                    style: const TextStyle(
                      color: Colors.white
                    ),
                    decoration: InputDecoration(
                      //fillColor: Colors.white24,
                      filled: true,
                      hintText: "Username",
                      hintStyle: const TextStyle(
                        color: Color(0xffffffff),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.white24,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xff15c79a),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter your email";
                      } else if (value.isNotEmpty) {
                        String exp = r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$';
                        RegExp regex = RegExp(exp);
                        String emailId = _email.text;
                        if (!regex.hasMatch(emailId)) {
                          return " please enter a valid email";
                        } else {
                          return null;
                        }
                      }
                      return null;
                    },
                    obscureText: false,
                    controller: _email,
                    style: const TextStyle(
                      color: Color(0xffffffff),
                    ),
                    decoration: InputDecoration(
                     // fillColor: Colors.white24,
                      filled: true,
                      hintText: "Email",
                      hintStyle: const TextStyle(
                        color: Colors.white
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.white24,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xff15c79a),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter a password";
                      } else if (value.isNotEmpty) {
                        String pattern =
                            r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$';
                        RegExp regex = RegExp(pattern);
                        String password = _password.text;
                        if (!regex.hasMatch(password)) {
                          return "Minimum  8 characters, at least 1 uppercase letter, 1 lowercase letter, 1 number and 1 special character";
                        } else {
                          return null;
                        }
                      }
                      return null;
                    },
                    obscureText: false,
                    controller: _password,
                    style: const TextStyle(
                      color: Colors.white
                    ),
                    decoration: InputDecoration(
                     // fillColor: Colors.white24,
                      filled: true,
                      hintText: "Password",
                      hintStyle: const TextStyle(
                        color: Color(0xffffffff),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.white24,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xff15c79a),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return " please enter your register id";
                      } else if (value.isNotEmpty) {
                        String exp = r'';
                        RegExp regex = RegExp(exp);
                        String userId = _username.text;
                        if (!regex.hasMatch(userId)) {
                          return " please enter a valid register id";
                        } else {
                          return null;
                        }
                      }
                      return null;
                    },
                    obscureText: false,
                    controller: _license,
                    style: const TextStyle(
                      color: Colors.white
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      hintText: "License Id",
                      hintStyle: const TextStyle(
                        color: Color(0xffffffff),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.white24,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xff15c79a),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    height: 40,
                    width: 150,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                        backgroundColor: const Color(0xff04516f),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // route
                          // Navigator.of(context).pushReplacement(
                          //   MaterialPageRoute(
                          //     builder: (context) {
                          //       return const AddMedicine(
                          //           decription: "New Medication");
                          //     },
                          //   ),
                          // );
                        } else {}
                      },
                      child: const Text(
                        "Sign In",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white
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
    );
  }
}
