import 'package:flutter/material.dart';

class ShopRequest extends StatelessWidget {
  const ShopRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.teal[700],
      appBar: AppBar(
        title: const Text(
          "Shopkeeper Request List",
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
           child: Text("ShopKeeper",
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
                   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                     const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 12,right: 90,left: 20),
                            child: Text("Name",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 7,left: 20),
                            child: Text("Id",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.normal
                            ),),
                          ),
                          
                          Padding(
                            padding: EdgeInsets.only(top: 2,left: 20),
                            child: Text("E-mail",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.normal
                            ),),
                          ),
                        ],
                      ),
                     const SizedBox(width: 90,),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20))
                        ),
                        child: IconButton(onPressed: (){}, 
                        icon:const Icon(Icons.check,color: Colors.white,size: 30,)),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20))
                        ),
                        child: IconButton(onPressed: (){},
                         icon:const Icon(Icons.clear,color: Colors.white,size: 30,)),
                      )
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
