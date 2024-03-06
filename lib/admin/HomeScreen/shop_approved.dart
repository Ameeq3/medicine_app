import 'package:flutter/material.dart';

class ShopApproved extends StatelessWidget {
  const ShopApproved({super.key});

  @override
  Widget build(BuildContext context) {
   // double screenwidth = MediaQuery.of(context).size.width;
            double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor:Colors.blueGrey[700],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          " Approved List",
          style: TextStyle(color: Colors.white),
        ),elevation: 0,
        backgroundColor: Colors.blueGrey[700]
      ),
      body: SafeArea(child: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
           padding: EdgeInsets.only(left: 20),
           child: Text("Shopkeepper",
           style: TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.bold
           ),),
         ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height:screenheight * 1/7 ,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[350],
                      border: Border.all(width: 0.2,style: BorderStyle.solid,)),
                      
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        const  Padding(
                            padding: EdgeInsets.only(top: 12,right: 90),
                            child: Text("Dr Najeeb",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),),
                          ),
                        const  Padding(
                            padding: EdgeInsets.only(top: 7),
                            child: Text("Dr Id",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.normal
                            ),),
                          ),
                          SizedBox(
                            height:screenheight * 1/2000,
                          ),
                        const  Text("E-mail",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.normal
                          ),),
                        ],
                      ),
                      IconButton(onPressed: (){}, 
                      icon: Image.asset("assets/edit.png",height: 29,width: 29,color: const Color.fromARGB(255, 35, 130, 38),filterQuality:FilterQuality.high ),),
                      IconButton(onPressed: (){},
                       icon:Image.asset("assets/delete.png",height: 35,width: 35,color: const Color.fromARGB(255, 196, 41, 30),filterQuality:FilterQuality.high ),
                       ),
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