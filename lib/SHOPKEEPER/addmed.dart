import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pill/SHOPKEEPER/medList.dart';
// import 'package:medicine_app/shop_keeper/medicinelist.dart';

class ShopAddmedicine extends StatefulWidget {
  const ShopAddmedicine({super.key});

  @override
  State<ShopAddmedicine> createState() => _ShopAddmedicineState();
}

class _ShopAddmedicineState extends State<ShopAddmedicine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff04516f),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xffffffff),
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                    scrollable: true,
                    title: const Text("add a new medicine"),
                    content: Form(
                      child: Column(
                        children: [
                          CircleAvatar(
                              child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add_a_photo,
                              color: Color(0xff04516f),
                            ),
                          )),
                          const Gap(8),
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: "medicine name",
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff04516f),
                                ),
                              ),
                            ),
                          ),
                          const Gap(5),
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: "price",
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff04516f),
                                ),
                              ),
                            ),
                          ),
                          const Gap(5),
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: "details",
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff04516f),
                                ),
                              ),
                            ),
                          ),
                          const Gap(8),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const MedicineList();
                                  },
                                ),
                              );
                            },
                            child: const Text(
                              "submit",
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff04516f),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ));
        },
        child: const Icon(
          Icons.add,
          color: Color(0xff04516f),
        ),
      ),
      // body: MedicineList(),
    );
  }
}


