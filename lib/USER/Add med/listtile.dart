import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class Schedules extends StatefulWidget {
  const Schedules({super.key});

  @override
  State<Schedules> createState() => _SchedulesState();
}

class _SchedulesState extends State<Schedules> {
  List<int> item = List<int>.generate(10, (index) => index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment(0.8, 1),
          colors: <Color>[
            Color(0xFFC5CAE9),
             Color(0xFF9FA8DA),
            // Color(0xFF7986CB),
            // Color(0xFF5C6BC0),
            // Color(0xFF3F51B5),
          ],
          tileMode: TileMode.mirror,
        )),
         child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 60,top: 60),
                    child: Image.asset("assets/reminder-pills-512.webp",
                    height: 50,
                    width: 50,)
                  ),
                 const Padding(
                    padding: EdgeInsets.only(left: 50,top: 60),
                    child: Center(
                      child: Text(
                        "Medicines",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50,left: 100),
                    child: IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, 
                    icon: const Icon(Icons.add,color: Colors.white,size: 30,))
                    
                    
                  )
                 
                ],
              ),
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 16,
          padding: const EdgeInsets.symmetric(vertical: 16),
          itemBuilder: (context, index) {
            return Slidable(
              endActionPane:
                  ActionPane(motion: const StretchMotion(), children: [
                SlidableAction(
                  onPressed: ((context) {}),
                  backgroundColor: const Color(0xFFC5CAE9),
                  icon: Icons.edit,
                ),
                // Gap(1),
                // Container(width: 1,),
                SlidableAction(
                  onPressed: ((context) {}),
                  backgroundColor: const Color(0xFFC5CAE9),
                  icon: Icons.delete,
                ),
              ]),
              child: ListTile(
                leading: const FaIcon(
                  FontAwesomeIcons.pills,
                  color: Color(0xFF7986CB),
                ),
                title: Text(
                  "Medicine $index",
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "time",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        Gap(10),
                        Text(
                          "dosage",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "discription",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
