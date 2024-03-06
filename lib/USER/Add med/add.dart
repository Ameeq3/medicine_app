import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pill/USER/Add%20med/numberstepper.dart';



class AddMedcine extends StatefulWidget {
  const AddMedcine({super.key});

  @override
  State<AddMedcine> createState() => _AddMedcineState();
}

class _AddMedcineState extends State<AddMedcine> {
  final _medicinenameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _dateController = TextEditingController();
  final _timeController = TextEditingController();
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
    "Every Day",
    "Every other Day",
    "Today",
    "Tommorrow",
    "Weakly",
  ];
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30,
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
                    padding: const EdgeInsets.only(left: 35,top: 30),
                    child: Image.asset("assets/reminder-pills-512.webp",
                    height: 50,
                    width: 50,)
                  ),
                 const Padding(
                    padding: EdgeInsets.only(left: 50,top: 30),
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
            SizedBox(
              height: screenheight *.02,
            ),
              
             
             const Text(
                "create Your medicine Schedule",
                style: TextStyle(color: Colors.white, 
                fontWeight: FontWeight.bold,
                fontSize: 18),
              ),
             const SizedBox(
                height: 15,
              ),
              Padding(
                padding:const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: _medicinenameController,
                  decoration:const InputDecoration(
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
              Padding(
                padding:const EdgeInsets.only(left: 20, right: 20, top: 13),
                child: TextField(
                  controller: _descriptionController,
                  decoration:const InputDecoration(
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
                height: 13,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: SizedBox(
                  height: 60,
                  width: 460,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        side: const BorderSide(
                      color: Colors.white,
                    ),),
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
                    child: Row(
                      children: [
                        Text(
                         _selectedNumber==0?"Add Dosage":_selectedNumber.toString(),
                          style:const TextStyle(
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
                height: 13,
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
                height: 11,
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
            const   SizedBox(
                height: 11,
              ),

             Padding(
               padding: const EdgeInsets.only(left: 20,right: 20),
               child: TextFormField(
                  controller: _dateController,
                  readOnly: true,
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      enabledBorder:const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      hintText: "Select Date",
                      hintStyle: const TextStyle(
                        color:Colors.white,
                      ),
                      suffixIcon: IconButton(
                          onPressed: () async {
                            final DateTime? date = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2028));
                            final formatteddate = DateFormat(
                              "dd-MM-yyyy",
                            ).format(date!);
                            setState(() {
                              _dateController.text = formatteddate.toString();
                            });
                          },
                          icon: const Icon(
                            Icons.calendar_month,
                            color: Colors.white,
                          ))),
                ),
             ),
             const   SizedBox(
                height: 13,
              ),
              
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: TextFormField(
                  controller: _timeController,
                  readOnly: true,
                  decoration: InputDecoration(
                      hintText: "Select Time",
                      hintStyle: const TextStyle(color: Colors.white),
                      border: const OutlineInputBorder(),
                      enabledBorder:const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () async {
                          TimeOfDay? time = await showTimePicker(
                              context: context, initialTime: TimeOfDay.now());
                          setState(() {
                            _timeController.text = time!.format(context);
                          });
                        },
                        icon: const Icon(
                          Icons.alarm,
                          color: Colors.white,
                        ),
                      )),
                ),
              ),
            const  SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 120,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    backgroundColor: Colors.green[600]
                  ),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                 child: const Text("Submit")),
              )
            ],
          ),
        ),
     ),
   );
  }
}
