import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:pill/ADMIN/HomeScreen/docreq.dart';
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
            DoctorRequest(),
            ShopRequest(),
            AdminPendingDoctor()
          ],
        ),
      ),
        bottomNavigationBar: FloatingNavbar(
          backgroundColor: Colors.teal[500],
          items: [
            FloatingNavbarItem(icon: Icons.medical_services_outlined,
            title: 'Doctor'),
            FloatingNavbarItem(icon: Icons.shopping_cart_checkout_outlined, title: 'Shopkeeper'),
            FloatingNavbarItem(icon: Icons.approval_outlined, title: 'Approved List'),
            // FloatingNavbarItem(icon: Icons.settings, title: 'Settings'),

          ], 
          currentIndex: _index, 
          onTap:(index){
           setState(() {
             _pageController.jumpToPage(index);
           });
          }
      ),
    );
  }
}
