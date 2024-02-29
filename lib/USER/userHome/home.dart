import 'package:flutter/material.dart';
import 'package:flutter_timeline_calendar/timeline/flutter_timeline_calendar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 350,
              color: const Color.fromARGB(255, 249, 121, 163),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 70, left: 20),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("assets/profile.jpg"),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Shuhaib Malik",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   height: 25,
                  // ),
                  // Padding(
                  //   padding: EdgeInsets.only(left: 20),
                  //   child: Text(
                  //     "CREATE",
                  //     style: TextStyle(
                  //         color: Colors.white,
                  //         fontSize: 22,
                  //         fontWeight: FontWeight.bold),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: EdgeInsets.only(left: 20, top: 8),
                  //   child: Text(
                  //     "NEW SCHEDULE",
                  //     style: TextStyle(
                  //         color: Colors.white,
                  //         fontSize: 22,
                  //         fontWeight: FontWeight.bold),
                  //   ),
                  // ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 222, bottom: 50),
                        child: Container(
                          clipBehavior: Clip.hardEdge,
                          height: 170,
                          width: 170,
                          decoration: const BoxDecoration(),
                          child: Image.asset(
                            "assets/medicine.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              top: 275,
              child: Container(
                height: 600,
                width: 394,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40)),
                          color: Colors.white),
                      child: TimelineCalendar(
                        calendarType: CalendarType.GREGORIAN,
                        calendarLanguage: "en",
                        calendarOptions: CalendarOptions(
                          viewType: ViewType.DAILY,
                          // toggleViewType: true,
                          headerMonthElevation: 0,
                          headerMonthShadowColor: Colors.black,
                          headerMonthBackColor: Colors.transparent,
                        ),
                      ),
                    ),
                  const  SizedBox(
                      height: 65,
                    ),
                    Column(
                      children: [
                        Image.asset("assets/clock.png",
                        height: 60,
                        width: 60,
                        ),
                       const Text("No Reminder Found!...",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                        ),)
                      ],
                    )
                  ],
                ),
              ),
            ),
            // Positioned(
            //   top: 120,
            //   left: 220,
            //   child: Container(
            //     clipBehavior: Clip.antiAliasWithSaveLayer,
            //     height: 190,
            //     width: 190,
            //     decoration: BoxDecoration(),
            //     child: Image.asset("assets/medicine.png"),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
