import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text("Medicines",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 23
        ),),
        backgroundColor: Colors.cyan[700],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyan[700],
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
                              color: Colors.white
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
                              Navigator.pop(context);
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
          color: Colors.white,
          size: 30,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: GridView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 18),
            itemCount: 8,
            itemBuilder: (ctx, i) {
              return Card(
                shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Color(0xff04516f)),
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: BoxDecoration(
                    color: Colors.cyan[700],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: const EdgeInsets.all(0),
                  padding: const EdgeInsets.all(5),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                        const SizedBox(
                          height: 140,
                         ),
                          Text(
                            'Title$i',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          
                          const Text(
                            'MRP 0000.00',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          const Text(
                            'discriptions',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row( mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) {
                    return const ShopAddmedicine();
                  },
                ),
              );
                                },
                                icon: const Icon(
                                  Icons.edit,
                                  color: Color(0xff04516f),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.delete,
                                  color: Color(0xff04516f),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.0,
              crossAxisSpacing: 0.0,
              mainAxisSpacing: 5,
              mainAxisExtent: 264,
            ),
          ),
        ),
      ),
    );
  }
}


