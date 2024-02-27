import 'package:flutter/material.dart';

class NumberStepper extends StatefulWidget {
  
  final int initialValue;
  final int min;
  final int max;
  final int step;

  final Function(int) onChanged;
  
  const NumberStepper({super.key,
    required this.initialValue,
    required this.max,
    required this.min,
    required this.onChanged,
    required this.step,  
  });

  

  @override
  State<NumberStepper> createState() => _NumberStepperState();
}

class _NumberStepperState extends State<NumberStepper> {

  int _currentValue = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _currentValue = widget.initialValue;
  }
  @override
  Widget build(BuildContext context) {
    return Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
          IconButton(onPressed: (){
            setState(() {
              if (_currentValue > widget.min) {
                _currentValue -= widget.step;
              }
            });
          }, 
          icon: const Icon(Icons.remove_circle_outline),),

          Text(_currentValue.toString(),style: const TextStyle(fontSize: 35),),

          IconButton(onPressed: (){
            setState(() {
              if (_currentValue < widget.max) {
                _currentValue += widget.step;
              }

              widget.onChanged(_currentValue);
            });
          }, 
          icon: const Icon(Icons.add_circle_outline),)
         ],
    );
  }
}
