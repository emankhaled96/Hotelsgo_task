// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:hotelsgo_task/views/widgets/bottom_sheet_widgets/adult_widget.dart';
import 'package:hotelsgo_task/views/widgets/bottom_sheet_widgets/children_widget.dart';

class RoomDetailsWidget extends StatefulWidget {
  final int roomNum;
  const RoomDetailsWidget({
    Key? key,
    required this.roomNum,
  }) : super(key: key);

  @override
  State<RoomDetailsWidget> createState() => _RoomDetailsWidgetState();
}

class _RoomDetailsWidgetState extends State<RoomDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 2,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 0),
                child: Text(
                  "ROOM ${widget.roomNum + 1}",
                ),
              ),
              const Padding(
                  padding: EdgeInsets.only(left: 12), child: AdultWidget()),
              const Padding(
                  padding: EdgeInsets.only(left: 12), child: ChildrenWidget()),
            ]),
      ),
    );
  }
}
