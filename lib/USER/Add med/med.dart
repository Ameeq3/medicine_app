import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:pill/USER/Add%20med/add.dart';
import 'package:pill/color_code.dart/color_code.dart';
import 'package:pill/dummydata/dummy.dart';
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        flexibleSpace: Container(
           decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
         // end: Alignment(0.8, 1),
          colors: <Color>[
            Color(0xFFC5CAE9),
             Color(0xFFC5CAE9),
            // Color(0xFF7986CB),
            // Color(0xFF5C6BC0),
            // Color(0xFF3F51B5),
          ],
          tileMode: TileMode.mirror,
        )),
        ),
        toolbarHeight: 40,
        backgroundColor: iconcolor,
        title: const Text(
          "Medicines",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: textcolor,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
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
        child: SafeArea(
          child: ListView.builder(
            itemCount: medicines.length,
            padding: const EdgeInsets.symmetric(vertical: 16),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 5,
                ),
                child: Slidable(
                  endActionPane:
                      ActionPane(motion: const StretchMotion(), children: [
                    SlidableAction(
                      onPressed: ((context) {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const AddMedcine(
                              );
                        }));
                      }),
                      backgroundColor: iconcolor,
                      icon: Icons.edit,
                    ),
                    SlidableAction(
                      onPressed: ((context) {}),
                      backgroundColor: iconcolor,
                      icon: Icons.delete,
                    ),
                  ]),
                  child: Container(
                    decoration: BoxDecoration(
                      color: bgcolor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      trailing: Column(
                        children: [
                          Text(
                            "Time $index",
                            style: const TextStyle(color: textcolor),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Date $index",
                            style: const TextStyle(color: textcolor),
                          ),
                        ],
                      ),
                      leading: const CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.white60,
                        backgroundImage: AssetImage("assets/pills.jpg"),
                      ),
                      title: Text(
                        medicines[index].name,
                        style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: textcolor),
                      ),
                      subtitle: Text(
                        medicines[index].description,
                        style: const TextStyle(
                          fontSize: 17,
                          color: textcolor,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: FloatingActionButton.extended(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const AddMedcine(
                   
                  
                  );
                },
              ),
            );
          },
          label: const Text(
            "Add",
            style: TextStyle(color: Colors.white),
          ),
          icon: const Icon(
            Icons.add,
            size: 30,
            color: Colors.white,
          ),
          backgroundColor: const Color(0xff15c79a),
        ),
      ),
    );
  }
}
