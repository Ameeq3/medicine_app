import 'package:flutter/material.dart';
import 'package:pill/splash/sp1.dart';
import 'package:pill/splash/sp2.dart';
import 'package:pill/splash/sp3.dart';
import 'package:pill/splash/sp4.dart';


class PageViewSp extends StatefulWidget {
  const PageViewSp({super.key});

  @override
  State<PageViewSp> createState() => _DoctorNavBarState();
}

class _DoctorNavBarState extends State<PageViewSp> {
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
    // double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBody: true,
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index){
            setState(() {
              _index = index;
            });
          },
          children: const [
            SpOne(),
            SpTwo(),
            SpThree(),
            SpFour()
            //AdminPendingDoctor()
          ],
        ),
      ),
        
        );
   }
}
