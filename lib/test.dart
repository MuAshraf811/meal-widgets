import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  String selectedOption = 'تكرار يومي';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.green,
              )),
          child: DropdownButton<String>(
            borderRadius: BorderRadius.circular(32),
            dropdownColor: Colors.green,
            
            padding: const EdgeInsets.only(left: 6),
            style: const TextStyle(
              color: Colors.white,
            ),
            value: selectedOption,
            onChanged: (String? newValue) {
              setState(() {
                selectedOption = newValue!;
              });
            },
            items: <String>[
              'تكرار يومي',
              'تكرار كل يومين',
              'تكرار كل ثلاث ايام',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
