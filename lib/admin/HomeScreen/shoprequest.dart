import 'package:flutter/material.dart';

class ShopRequest extends StatelessWidget {
  const ShopRequest({super.key});

  @override
  Widget build(BuildContext context) {
            double screenwidth = MediaQuery.of(context).size.width;
            double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor:Colors.blueGrey[700],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          "Shopkeeper Request List",
          style: TextStyle(color: Colors.white),
        ),elevation: 0,
        backgroundColor: Colors.blueGrey[700]
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
         SizedBox(
          height: screenheight * 1/100,
         ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: screenheight * 1/7,
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
                    SizedBox(width: screenwidth * .21,),
                      IconButton(onPressed: (){}, 
                      icon:const Icon(Icons.check_circle_outline,color: Color.fromARGB(255, 30, 137, 34),size: 37,),),
                      IconButton(
                        onPressed: (){}, 
                        icon: Image.asset("assets/decline.png",height: 31,width: 31,color: const Color.fromARGB(255, 196, 41, 30),filterQuality:FilterQuality.high ,),
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
