import 'package:flutter/material.dart';

class DropDownComponent extends StatefulWidget {
  DropDownComponent({super.key});

  @override
  State<DropDownComponent> createState() => _TestState();
}

class _TestState extends State<DropDownComponent> {
  String selectedOption = 'تكرار يومي';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.green,
            width: 2,
          )),
      child: DropdownButton<String>(
        borderRadius: BorderRadius.circular(32),
        dropdownColor: Colors.green,
        iconDisabledColor: Colors.green,
        iconEnabledColor: Colors.green,
        isDense: true,
        padding: const EdgeInsets.only(left: 8, top: 4, bottom: 1),
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
    );
  }
}
