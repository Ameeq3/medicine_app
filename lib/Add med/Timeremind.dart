import 'package:flutter/material.dart';
// import 'package:medicine_app/constants/Colorcode.dart';

class TimeDemo extends StatefulWidget {
  const TimeDemo({super.key});

  @override
  State<TimeDemo> createState() => _TimeDemoState();
}

class _TimeDemoState extends State<TimeDemo> {
  TimeOfDay selectedTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white24),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
           const RoundedRectangleBorder()),
      ),
      onPressed: () async {
        final TimeOfDay? timeOfDay = await showTimePicker(
          context: context,
          initialTime: selectedTime,
          initialEntryMode: TimePickerEntryMode.dial,
        );

        if (timeOfDay != null) {
          setState(() {
            selectedTime = timeOfDay;
          });
        }
      },
      child: Text(
        "${selectedTime.format(context)}",
        style: const TextStyle(color: Colors.white),
       ),
     );
   }
}
