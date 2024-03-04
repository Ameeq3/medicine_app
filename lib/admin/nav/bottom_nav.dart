import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:pill/ADMIN/HomeScreen/doc_req.dart';
import 'package:pill/ADMIN/HomeScreen/pendingdocter.dart';
import 'package:pill/ADMIN/HomeScreen/shoprequest.dart';

class AdminNavBar extends StatefulWidget {
  const AdminNavBar({super.key});

  @override
  State<AdminNavBar> createState() => _AdminNavBarState();
}

class _AdminNavBarState extends State<AdminNavBar> {
 int _index = 0;
 late PageController _pageController;

 @override
 void initState(){
  super.initState();
  _pageController = PageController();
 }
 @override
 void dispose(){
  _pageController.dispose();
  super.dispose();

 }

  @override
  Widget build(BuildContext context) {
     double screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBody: true,
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index){
            setState(() {
              _index=index;
            });
          },
          children: const [
            AdminPendingDoctor(),
            DoctorRequest(),
            ShopRequest(),
            
          ],
        ),
      ),
        bottomNavigationBar: SizedBox(
          height: screenheight * .10,
          child: FloatingNavbar(
            backgroundColor: Colors.blueGrey[700],
            items: [
              FloatingNavbarItem(icon: Icons.approval_outlined, title: 'Approved List'),
              FloatingNavbarItem(icon: Icons.medical_services_outlined,
              title: 'Doctor'),
              FloatingNavbarItem(icon: Icons.shopping_cart_checkout_outlined, title: 'Shopkeeper'),
              
              // FloatingNavbarItem(icon: Icons.settings, title: 'Settings'),
          
            ], 
            currentIndex: _index, 
            onTap:(index){
             setState(() {
               _pageController.jumpToPage(index);
             });
            }
                ),
        ),
    );
  }
}
