import 'package:flutter/material.dart';

class ChildrenWidget extends StatefulWidget {
  const ChildrenWidget({super.key});

  @override
  State<ChildrenWidget> createState() => _ChildrenWidgetState();
}

class _ChildrenWidgetState extends State<ChildrenWidget> {
  int _counter = 1;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Children",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                width: width * 0.293,
              ),
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  _decrementCounter();
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
                  _incrementCounter();
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
            ]),
        ListView.builder(
            itemCount: _counter,
            physics: const ScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: (ctx, i) => Padding(
                  padding: const EdgeInsets.fromLTRB(10, 12, 0, 0),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Age Of Child ${i + 1}",
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.01,
                        ),
                        Text(
                          "12 Years",
                          style:
                              TextStyle(fontSize: 18, color: Colors.grey[700]),
                        ),
                        const Padding(padding: EdgeInsets.all(8)),
                      ]),
                ))
      ],
    );
  }
}
