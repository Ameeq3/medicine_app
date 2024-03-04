import 'package:flutter/material.dart';
import 'package:pill/SHOPKEEPER/PROFILE/change_pass.dart';
import 'package:pill/SHOPKEEPER/PROFILE/edit_orofil.dart';
import 'package:pill/SHOPKEEPER/shoplogin/login.dart';

class ShopProfile extends StatelessWidget {
  const ShopProfile({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
            double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration:  BoxDecoration(
          color: Colors.cyan[800]
        ),
        child: Column(
          children: [
             SizedBox(
              height: screenheight *.08
            ),
            const Text(
              "Profile",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 21),
            ),
             SizedBox(
              height: screenheight *.03
            ),
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
             SizedBox(
              height: screenheight *.02
            ),
            const Text(
              "Najeeb Malik",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 22),
            ),
             SizedBox(
              height: screenheight *.013
            ),
             const Text(
              "License Id : 2001564",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18),
            ),
            SizedBox(height: screenheight * .007),
            const Text(
              "shuhaibmalik@gmail.com",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18),
            ),
            SizedBox(height: screenheight * .007),
            const Text(
              "7034534532",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18),
            ),
          
             SizedBox(height: screenheight * .007),
            
            const Text(
              "kochi , Kakkanad",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18),
            ),
            SizedBox(height: screenheight * .04),
            SizedBox(
              width: screenwidth * .34,
                height: screenheight *.06,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Colors.transparent,
                      elevation: 1),
                  
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ShopEditProfile()));
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ShopChangePass()));
                    },
                    icon: const Icon(
                      Icons.key,
                      size: 30,
                    ),
                    label:  Row(
                      children: [
                       SizedBox(width: screenwidth * .02),
                       const Text(
                          "Change Password",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(width: screenwidth * .19),
                       const Icon(
                          Icons.arrow_forward,
                          size: 30,
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ShopLoginPage()));
                    },
                    icon: const Icon(
                      Icons.logout,
                      size: 30,
                    ),
                    label:  Row(
                      children: [
                       SizedBox(width: screenwidth * .02),
                       const Text(
                          "Log Out",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                         SizedBox(width: screenwidth * .38),
                       const Icon(
                          Icons.arrow_forward,
                          size: 30,
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
                        SizedBox(width: screenwidth * .24),
                       const Icon(
                          Icons.arrow_forward,
                          size: 30,
                          color: Colors.red,
                        )
                      ],
                    ))),
          ],
        ),
      ),
    );
  }
}
