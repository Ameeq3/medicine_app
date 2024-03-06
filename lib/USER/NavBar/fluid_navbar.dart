import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:pill/USER/Add%20med/chat.dart';
import 'package:pill/USER/Add%20med/med.dart';
import 'package:pill/USER/Add%20med/store.dart';
import 'package:pill/USER/userHome/home.dart';
import 'package:pill/USER/Profile/profile.dart';


void main() => runApp(const FluidNavBarDemo());

class  FluidNavBarDemo extends StatefulWidget {
  const FluidNavBarDemo({super.key});

  @override
  State createState() {
    return _FluidNavBarDemoState();
  }
}

class _FluidNavBarDemoState extends State {
  Widget? _child;

  @override
  void initState() {
    _child = const Home();
    super.initState();
  }

  @override
  Widget build(context) {
    // Build a simple container that switches content based of off the selected navigation item
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF75B7E1),
        extendBody: true,
        body: _child,
        bottomNavigationBar: FluidNavBar(
          icons: [
            FluidNavBarIcon(
                icon: Icons.home,
                backgroundColor: Colors.white,
                extras: {"label": "home"}),
            FluidNavBarIcon(
                icon: Icons.add,
                backgroundColor: Colors.white,
                extras: {"label": "Medication"}),
                 FluidNavBarIcon(
                icon: Icons.store,
                backgroundColor: Colors.white,
                extras: {"label": "Store"}),
                 FluidNavBarIcon(
                icon: Icons.chat,
                backgroundColor: Colors.white,
                extras: {"label": "Chat"}),
            FluidNavBarIcon(
                icon: Icons.person,
                backgroundColor: Colors.white,
                extras: {"label": "Profile"}),
           
          ],
          onChange: _handleNavigationChange,
          style: const FluidNavBarStyle(iconUnselectedForegroundColor: Colors.black,
          barBackgroundColor: Color(0xFF7986CB),
          ),
          scaleFactor: 1.5,
          defaultIndex: 0,
          itemBuilder: (icon, item) => Semantics(
            label: icon.extras!["label"],
            child: item,
          ),
        ),
      ),
    );
  }

  void _handleNavigationChange(int index) {
    setState(() {
      switch (index) {
        case 0:
          _child = const Home();
          break;
        case 1:
          _child = const Schedules();
          break;
            case 2:
          _child = const Store();
           case 3:
          _child = const UserChat();
          break;
        case 4:
          _child = const Profile();
          break;
       
      }
      _child = AnimatedSwitcher(
        switchInCurve: Curves.easeOut,
        switchOutCurve: Curves.easeIn,
        duration: const Duration(milliseconds: 600),
        child: _child,
      );
    });
  }
}
