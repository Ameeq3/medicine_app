import 'package:flutter/material.dart';


class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

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
        child: SingleChildScrollView(
          child: Column(
            children: [
             const SizedBox(
                height: 80,
              ),
            const  Text("Edit Profile",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 21
              ),),
             const SizedBox(
                height: 50,
              ),
             const CircleAvatar(
                radius: 80,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 77,
                  backgroundImage: AssetImage("assets/profile.jpg")
                ),
              ),
             const SizedBox(
                height: 40,
              ),
             const Padding(
                padding: EdgeInsets.only(left: 40,right: 40),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white
                      )
                    ),
                   // border: OutlineInputBorder(),
                    labelText: "Full Name",
                    labelStyle: TextStyle(
                      color: Colors.white
                    ),
                    //hintText: "Full Name"
                  ),
                ),
              ),
             const Padding(
                padding:  EdgeInsets.only(left: 40,right: 40,top: 20),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white
                      )
                    ),
                    //border: OutlineInputBorder(),
                    labelText: "Phone Number",
                    labelStyle: TextStyle(
                      color: Colors.white
                    )
                    // hintText: "Phone Number"
                  ),
                ),
              ),
             const Padding(
                padding: EdgeInsets.only(left: 40,right: 40,top: 20),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white
                      )
                    ),
                   // border: OutlineInputBorder(),
                    labelText: "Email ID",
                    labelStyle: TextStyle(
                      color: Colors.white
                    )
                    //hintText: "@gmail.com"
                  ),
                ),
              ),
             const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                   Padding(
                padding: const EdgeInsets.only(left: 40),
                child: SizedBox(
                  width: 130,
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      backgroundColor: Colors.white
                    ),
                    onPressed: (){
                       Navigator.pop(context);
                    },
                   child: const Text("Cancel",
                   style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black
                   ),)),
                ),
              ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: SizedBox(
                      width: 130,
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                          backgroundColor: const Color.fromARGB(255, 57, 144, 182)
                        ),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                       child: const Text("Submit",
                       style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16
                       ),)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}