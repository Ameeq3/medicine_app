import 'package:flutter/material.dart';
 
class Order extends StatelessWidget {
  const Order({super.key});

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
      ),),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const SizedBox(
            height: 70,
          ),
         const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text("Orders",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25,top: 50),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: "Medicine Name",
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white
                  )
                ),
                border: OutlineInputBorder(),
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                   color: Colors.white,
                   
                  )
                ), fillColor:Color(0x0ff15c76)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25,top: 20),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: "Phone Number",
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white
                  )
                ),
                border: OutlineInputBorder(),
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                   color: Colors.white,
                   
                  )
                ), fillColor:Color(0x0ff15c76)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25,top: 20),
            child: TextFormField(
              maxLines: 5,
              decoration: const InputDecoration(
                
                
                hintText: "Address : ",
                hintStyle: TextStyle(
                  
                  color: Colors.white,
                ),
               
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white
                  )
                ),
                border: OutlineInputBorder(),
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                   color: Colors.white,
                   
                  )
                ), fillColor:Color(0x0ff15c76)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40,left: 136),
            child: SizedBox(
              width: 120,
              child: ElevatedButton(style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                backgroundColor: const Color.fromARGB(255, 57, 144, 182)
              ),
                onPressed: (){},
               child: const Text("Submit")),
            ),
          )
        ],
      ),
      ),
      
    );
  }
}