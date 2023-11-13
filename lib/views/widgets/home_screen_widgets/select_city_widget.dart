import 'package:flutter/material.dart';

class SelectCityWidget extends StatelessWidget {
  const SelectCityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextFormField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(0),
          hintText: "Select City",
          hintStyle: const TextStyle(
              color: Colors.blue, fontSize: 18, fontWeight: FontWeight.normal),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: const BorderSide(
                  color: Colors.blue,
                  strokeAlign: BorderSide.strokeAlignCenter)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: const BorderSide(
                  color: Colors.blue,
                  strokeAlign: BorderSide.strokeAlignCenter)),
        ),
      ),
    );
  }
}
