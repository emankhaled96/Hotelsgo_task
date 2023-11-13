import 'package:flutter/material.dart';

class PetCardWidget extends StatefulWidget {
  const PetCardWidget({super.key});

  @override
  State<PetCardWidget> createState() => _PetCardWidgetState();
}

class _PetCardWidgetState extends State<PetCardWidget> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        elevation: 2,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 8, 8, 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Pet-Friendly",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "Only show stays that allow pets",
                      style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                    ),
                  ],
                ),
              ),
              Switch.adaptive(
                value: _value,
                onChanged: (newValue) => setState(() => _value = newValue),
              )
            ]),
      ),
    );
  }
}
