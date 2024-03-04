import 'package:flutter/material.dart';
import 'package:pill/SHOPKEEPER/PROFILE/change_pass.dart';
import 'package:pill/SHOPKEEPER/PROFILE/edit_orofil.dart';
import 'package:pill/SHOPKEEPER/shoplogin/login.dart';

class ShopProfile extends StatelessWidget {
  const ShopProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration:  BoxDecoration(
          color: Colors.cyan[800]
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            const Text(
              "Profile",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 21),
            ),
            const SizedBox(
              height: 20,
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
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Najeeb Malik",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 22),
            ),
            const SizedBox(
              height: 10,
            ),
             const Text(
              "License Id : 2001564",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18),
            ),
            const SizedBox(
              height: 7,
            ),
            const Text(
              "shuhaibmalik@gmail.com",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18),
            ),
            const SizedBox(
              height: 7,
            ),
            const Text(
              "7034534532",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18),
            ),
            const SizedBox(
              height: 7,
            ),
            const Text(
              "kochi , Kakkanad",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 130,
              height: 45,
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
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                width: 310,
                height: 55,
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
                    label: const Row(
                      children: [
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Change Password",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(width: 70),
                        Icon(
                          Icons.arrow_forward,
                          size: 30,
                        )
                      ],
                    ))),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                width: 310,
                height: 55,
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
                    label: const Row(
                      children: [
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Log Out",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(width: 144),
                        Icon(
                          Icons.arrow_forward,
                          size: 30,
                        )
                      ],
                    ))),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                width: 310,
                height: 55,
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
                    label: const Row(
                      children: [
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Delete Account",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              fontSize: 16),
                        ),
                        SizedBox(width: 90),
                        Icon(
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
