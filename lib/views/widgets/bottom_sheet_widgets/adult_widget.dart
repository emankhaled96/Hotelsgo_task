import 'package:flutter/material.dart';

class AdultWidget extends StatefulWidget {
  const AdultWidget({super.key});

  @override
  State<AdultWidget> createState() => _AdultWidgetState();
}

class _AdultWidgetState extends State<AdultWidget> {
  int _counter = 1;
  void incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void decrementAdults() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Adults",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          SizedBox(
            width: width * 0.33,
          ),
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              decrementAdults();
            },
            icon: const Icon(
              Icons.remove,
              color: Colors.blue,
            ),
            style: const ButtonStyle(
              side: MaterialStatePropertyAll(
                BorderSide(color: Colors.blue),
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.all(8)),
          Text(
            _counter.toString(),
            style: const TextStyle(fontSize: 18),
          ),
          const Padding(padding: EdgeInsets.all(8)),
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              incrementCounter();
            },
            icon: const Icon(
              Icons.add,
              color: Colors.blue,
            ),
            style: const ButtonStyle(
              side: MaterialStatePropertyAll(
                BorderSide(color: Colors.blue),
              ),
            ),
          ),
        ]);
  }
}
