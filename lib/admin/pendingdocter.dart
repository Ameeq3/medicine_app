import 'package:flutter/material.dart';

class AdminPendingDoctor extends StatelessWidget {
  const AdminPendingDoctor({super.key});

  @override
  Widget build(BuildContext context) {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50,),
        Text("Pending Doctors",
        style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.normal,
          color: Colors.white
        ),),
      SizedBox(
        height: 20,
      ),
        Text("Pending Doctors:",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),),
        
        Expanded(
          child: ListView.builder(
            itemCount: 15,
            itemBuilder: (context, index) {
              return ListTile(
                title: const Text(
                  "Pending Doctors",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.edit,
                          color: Colors.green,
                          size: 30,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                          size: 30,
                        )),
                  ],
                ),
              );
            },
          ),
        ),
          ],
        ),
      ),
    );
  }
}
