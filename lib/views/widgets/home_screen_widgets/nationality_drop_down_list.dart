import 'package:flutter/material.dart';

class NationalityDropDownList extends StatelessWidget {
  const NationalityDropDownList({super.key});

  @override
  Widget build(BuildContext context) {
    String dropdownvalue = "Select Nationality";
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.all(16),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                  color: Colors.blue,
                  strokeAlign: BorderSide.strokeAlignCenter)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                  color: Colors.blue,
                  strokeAlign: BorderSide.strokeAlignCenter))),
      hint: const Text(
        "Select Nationality",
        style: TextStyle(color: Colors.blue),
      ),
      focusColor: Colors.blue,
      value: dropdownvalue,
      onChanged: (newValue) {
        dropdownvalue = newValue!;
      },
      items: <String>[
        "Select Nationality",
        "Egyptian",
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: const TextStyle(
                color: Colors.blue, fontWeight: FontWeight.normal),
          ),
        );
      }).toList(),
    );
  }
}
