import 'package:flutter/material.dart';
import 'package:hotelsgo_task/views/widgets/bottom_sheet_widgets/pet_card_widget.dart';
import 'package:hotelsgo_task/views/widgets/bottom_sheet_widgets/room_number_card.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ElevatedButton.icon(
        icon: const Icon(
          Icons.search,
          color: Colors.white,
        ),
        style: const ButtonStyle(
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.elliptical(-20, 50),
                  topRight: Radius.elliptical(-20, 50),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)))),
          backgroundColor: MaterialStatePropertyAll(Colors.orangeAccent),
        ),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              backgroundColor: Colors.white,
              clipBehavior: Clip.antiAlias,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              builder: (BuildContext context) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.75,
                  child: Scaffold(
                    appBar: AppBar(
                        backgroundColor: Colors.white,
                        automaticallyImplyLeading: false,
                        centerTitle: true,
                        title: const Text(
                          "Rooms and Guests",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        actions: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: IconButton(
                              icon: const Icon(Icons.close),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ]),
                    body: SingleChildScrollView(
                      child: Container(
                        color: Colors.white60,
                        child: ListView(
                          physics: const ScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          children: const [RoomNumberCard(), PetCardWidget()],
                        ),
                      ),
                    ),
                  ),
                );
              });
        },
        label: const Text(
          "Find Hotels",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
