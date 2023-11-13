import 'package:flutter/material.dart';
import 'package:hotelsgo_task/views/widgets/bottom_sheet_widgets/room_details.dart';

class RoomNumberCard extends StatefulWidget {
  const RoomNumberCard({super.key});

  @override
  State<RoomNumberCard> createState() => _RoomNumberCardState();
}

class _RoomNumberCardState extends State<RoomNumberCard> {
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
    return _buildRoomsNumber();
  }

  Widget _buildRoomsNumber() {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: height * 0.1,
              child: Card(
                elevation: 2,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Rooms",
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          width: width * 0.3,
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
                ),
              ),
            ),
          ),
          ListView.builder(
              itemCount: _counter,
              physics: const ScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (ctx, i) => RoomDetailsWidget(roomNum: i))
        ],
      ),
    );
  }
}
