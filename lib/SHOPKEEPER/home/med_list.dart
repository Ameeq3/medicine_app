// import 'package:flutter/material.dart';
// import 'package:pill/SHOPKEEPER/addmed.dart';
// // import 'package:medicine_app/shop_keeper/addmedicine.dart';


// class MedicineList extends StatelessWidget {
//   const MedicineList({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor:const Color(0xff04516f),
//         title: const Text(
//           "Medicines",
//           style: TextStyle(
//             fontWeight: FontWeight.w500,
//             color: Colors.white),
//         ),elevation: 0,
//       ),
//       body: SafeArea(
//         child: Center(
//           child: GridView.builder(
//             shrinkWrap: true,
//             padding: const EdgeInsets.symmetric(horizontal: 18),
//             itemCount: 8,
//             itemBuilder: (ctx, i) {
//               return Card(
//                 shape: RoundedRectangleBorder(
//                     side: const BorderSide(color: Color(0xff04516f)),
//                     borderRadius: BorderRadius.circular(20)),
//                 child: Container(
//                   height: MediaQuery.of(context).size.height * 0.4,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   margin: const EdgeInsets.all(5),
//                   padding: const EdgeInsets.all(5),
//                   child: Stack(
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.stretch,
//                         children: [
//                           Expanded(
//                             child: Image.network(
//                               'https://tech.pelmorex.com/wp-content/uploads/2020/10/flutter.png',
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                           Text(
//                             'Title$i',
//                             style: const TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
                          
//                           const Text(
//                             'MRP 0000.00',
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 15,
//                             ),
//                           ),
//                           const Text(
//                             'discriptions',
//                             style: TextStyle(
//                               fontSize: 15,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           Row( mainAxisAlignment: MainAxisAlignment.end,
//                             children: [
//                               IconButton(
//                                 onPressed: () {
//                                   Navigator.of(context).pushReplacement(
//                 MaterialPageRoute(
//                   builder: (context) {
//                     return const ShopAddmedicine();
//                   },
//                 ),
//               );
//                                 },
//                                 icon: const Icon(
//                                   Icons.edit,
//                                   color: Color(0xff04516f),
//                                 ),
//                               ),
//                               IconButton(
//                                 onPressed: () {},
//                                 icon: const Icon(
//                                   Icons.delete,
//                                   color: Color(0xff04516f),
//                                 ),
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               );
//             },
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               childAspectRatio: 1.0,
//               crossAxisSpacing: 0.0,
//               mainAxisSpacing: 5,
//               mainAxisExtent: 264,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
