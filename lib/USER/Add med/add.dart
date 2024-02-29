import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:pill/USER/Add%20med/listtile.dart';
import 'package:pill/USER/Add%20med/time_demo.dart';
import 'package:pill/USER/Add%20med/numberstepper.dart';

class AddMedcine extends StatefulWidget {
  const AddMedcine({super.key});

  @override
  State<AddMedcine> createState() => _AddMedcineState();
}

class _AddMedcineState extends State<AddMedcine> {
  var _selectedNumber = 0;

  String? valueChoose;
  final List<String> listItem = [
    "Pill",
    "Injection",
    "Tablet",
    "Powder",
    "Inhaler",
    "Antibiotics"
  ];
  final List<String> item = [
    "",
    "Injection",
    "Tablet",
    "Powder",
    "Inhaler",
    "Antibiotics"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 60,top: 60),
                    child: Image.asset("assets/reminder-pills-512.webp",
                    height: 50,
                    width: 50,)
                  ),
                 const Padding(
                    padding: EdgeInsets.only(left: 50,top: 60),
                    child: Center(
                      child: Text(
                        "Capsule",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100,top: 60),
                    child: TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Schedules()));
                    },
                     child: const Text("Done",
                     style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                     ),))
                  ),
                ],
              ),
        ),elevation: 0,
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
        
        child: SingleChildScrollView(
          child: Column(
            children: [
            const  SizedBox(
                height: 15,
              ),
              
             const SizedBox(
                height: 30,
              ),
             const Text(
                "create Your medicine Schedule",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
             const SizedBox(
                height: 30,
              ),
             const Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      prefixIcon: Icon(
                        Icons.medical_services_outlined,
                        color: Color.fromARGB(255, 18, 114, 21),
                      ),
                      labelText: "Enter Medicine Name",
                      labelStyle: TextStyle(color: Colors.white)),
                ),
              ),
             const Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 15),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      prefixIcon: Icon(
                        Icons.description,
                        color: Color.fromARGB(255, 18, 114, 21),
                      ),
                      labelText: "Description",
                      labelStyle: TextStyle(color: Colors.white)),
                ),
              ),
             const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: SizedBox(
                  height: 60,
                  width: 460,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                      color: Colors.white,
                    )),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                              title: const Text("Select a number of Dose"),
                              content: NumberStepper(
                                initialValue: _selectedNumber,
                                min: 0,
                                max: 30,
                                step: 1,
                                onChanged: (value) {
                                  setState(() {
                                    _selectedNumber = value;
                                  });
                                },
                              )));
                    },
                    child: const Row(
                      children: [
                        Text(
                          "Add Dosage",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          // selectionColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: SizedBox(
                  height: 60,
                  width: 460,
                  child: DropdownSearch<String>(
                    popupProps: const PopupProps.dialog(
                      showSearchBox: true,
                      searchFieldProps: TextFieldProps(
                        decoration:
                            InputDecoration(labelText: "Select An Medicine Type"),
                      ),
                    ),
                    items: listItem,
                    dropdownDecoratorProps: const DropDownDecoratorProps(
                      baseStyle: TextStyle(color: Colors.white),
                      dropdownSearchDecoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white
                          )
                        ),
                          border: OutlineInputBorder(),
                          labelText: "Medicine type",
                          labelStyle: TextStyle(color: Colors.white),
                          suffixIconColor: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: SizedBox(
                  height: 60,
                  width: 460,
                  child: DropdownSearch<String>(
                    popupProps: const PopupProps.dialog(
                      showSearchBox: false,
                      
                    ),
                    items: item,
                    dropdownDecoratorProps: const DropDownDecoratorProps(
                      baseStyle: TextStyle(color: Colors.white),
                      dropdownSearchDecoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white
                          )
                        ),
                          border: OutlineInputBorder(),
                          labelText: "Days",
                          labelStyle: TextStyle(color: Colors.white),
                          suffixIconColor: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              
              const Padding(
                padding:  EdgeInsets.only(left: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Set Reminder",style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),),
              
                    TimeDemo()
                  ],
                ),
              ),
              SizedBox(
                width: 100,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    backgroundColor: Colors.green[600]
                  ),
                  onPressed: (){},
                 child: const Text("Submit")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
