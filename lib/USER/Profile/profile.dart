import 'package:flutter/material.dart';
import 'package:pill/USER/Profile/changepassword.dart';
import 'package:pill/USER/Profile/edit_profile.dart';
import 'package:pill/USER/userlogin/login.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
        child: Column(
          children: [
           SizedBox(height: screenheight * .08),
            
            const Text(
              "Profile",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 21),
            ),
           SizedBox(height: screenheight * .03),
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.white,
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                        clipBehavior: Clip.hardEdge,
                        title: Image.asset(
                          "assets/profile.jpg",
                          fit: BoxFit.cover,
                        )),
                  );
                },
                child: const CircleAvatar(
                  radius: 57,
                  backgroundImage: AssetImage("assets/profile.jpg"),
                ),
              ),
            ),
            SizedBox(height: screenheight * .02),
            const Text(
              "Shuhaib Malik",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 22),
            ),
             SizedBox(height: screenheight * .01),
            const Text(
              "shuhaibmalik@gmail.com",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18),
            ),
             SizedBox(height: screenheight * .002),
            const Text(
              "7510115506",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18),
            ),
             SizedBox(height: screenheight * .002),
            const Text(
              "kochi , Kakkanad",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18),
            ),
            SizedBox(
              height: screenheight * .029),
            SizedBox(
               width: screenwidth * .34,
                height: screenheight *.06,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Colors.transparent,
                      elevation: 1),
                  //
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EditProfile()));
                  },
                  child: const Text(
                    "Edit Profile",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  )),
            ),
             SizedBox(height: screenheight * .03),
            SizedBox(
               width: screenwidth * .8,
                height: screenheight *.07,
                child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 1,
                        backgroundColor: Colors.transparent),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangePass()));
                    },
                    icon: const Icon(
                      Icons.key,
                      size: 30,
                      color: Colors.blue
                    ),
                    label: Row(
                      children: [
                        
                         SizedBox(width: screenwidth * .02),
                        
                       const Text(
                          "Change Password",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16,color: Colors.white),
                        ),
                       SizedBox(width: screenwidth * .17),
                       const Icon(
                          Icons.arrow_forward,
                          size: 30,
                          color: Colors.blue,
                        )
                      ],
                    ))),
            SizedBox(
              height: screenheight * .025),
            
            SizedBox(
                width: screenwidth * .8,
                height: screenheight *.07,
                child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 1,
                        backgroundColor: Colors.transparent),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                    },
                    icon: const Icon(
                      Icons.logout,
                      size: 30,
                      color: Colors.blue,
                    ),
                    label: Row(
                      children: [
                         SizedBox(width: screenwidth * .02),
                       const Text(
                          "Log Out",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16,color: Colors.white),
                        ),
                      SizedBox(width: screenwidth * .359),
                       const Icon(
                          Icons.arrow_forward,
                          size: 30,
                          color: Colors.blue,
                        )
                      ],
                    ))),
            SizedBox(
              height: screenheight * .025),
            SizedBox(
               width: screenwidth * .8,
                height: screenheight *.07,
                child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 1,
                        backgroundColor: Colors.transparent),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete_forever,
                      size: 30,
                      color: Colors.red,
                    ),
                    label:  Row(
                      children: [
                       SizedBox(width: screenwidth * .02),
                       const Text(
                          "Delete Account",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              fontSize: 16),
                        ),
                       
                      ],
                    ))),
          ],
        ),
      ),
    );
  }
}
