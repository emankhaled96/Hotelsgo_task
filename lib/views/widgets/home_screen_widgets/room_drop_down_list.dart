import 'package:flutter/material.dart';

class RoomDropDownList extends StatelessWidget {
  const RoomDropDownList({super.key});

  @override
  Widget build(BuildContext context) {
    String roomDropdownvalue = "1 Room, 2 Adults, 0 Children";

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
        "1 Room, 2 Adults, 0 Children",
        style: TextStyle(color: Colors.blue),
      ),
      focusColor: Colors.blue,
      value: roomDropdownvalue,
      onChanged: (newValue) {
        roomDropdownvalue = newValue!;
      },
      items: <String>[
        "1 Room, 2 Adults, 0 Children",
        "2 Rooms, 2 Adults, 2 Children",
        "3 Rooms, 4 Adults, 2 Children"
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
