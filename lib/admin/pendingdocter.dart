import 'package:flutter/material.dart';

class AdminPendingDoctor extends StatelessWidget {
  const AdminPendingDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.teal[700],
      appBar: AppBar(
        title: const Text(
          " Approved List",
          style: TextStyle(color: Colors.white),
        ),elevation: 0,
        backgroundColor: Colors.teal[700]
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        const Padding(
           padding: EdgeInsets.only(left: 20),
           child: Text("Doctors",
           style: TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.bold
           ),),
         ),
        const SizedBox(
          height: 8,
         ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[350],
                      border: Border.all(width: 0.2,style: BorderStyle.solid,)),
                      
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                     const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 12,right: 90),
                            child: Text("Dr Najeeb",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 7),
                            child: Text("Dr Id",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.normal
                            ),),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text("E-mail",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.normal
                          ),),
                        ],
                      ),
                      IconButton(onPressed: (){}, 
                      icon:const Icon(Icons.edit,color: Colors.green,size: 30,)),
                      IconButton(onPressed: (){},
                       icon:const Icon(Icons.delete,color: Colors.red,size: 30,))
                    ],
                  ),
                  ),
                );
              },
            ),
          ),
           const Padding(
           padding: EdgeInsets.only(left: 20,top: 10),
           child: Text("Shopkeeper",
           style: TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.bold
           ),),
         ),
        const SizedBox(
          height: 8,
         ),
          //
           Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[350],
                      border: Border.all(width: 0.2,style: BorderStyle.solid,)),
                      
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                     const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 12,right: 90),
                            child: Text("Name",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 7),
                            child: Text("Id",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.normal
                            ),),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text("E-mail",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.normal
                          ),),
                        ],
                      ),
                      IconButton(onPressed: (){}, 
                      icon: const Icon(Icons.edit,color: Colors.green,size: 30,)),
                      IconButton(onPressed: (){},
                       icon: const Icon(Icons.delete,color: Colors.red,size: 30,))
                    ],
                  ),
                  ),
                );
              },
            ),
          ),
        ],
      )),
    );
  }
}
