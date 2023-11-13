import 'package:flutter/material.dart';
import 'package:hotelsgo_task/utils/title_clipper.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return ClipPath(
      clipper: TitleClipper(),
      child: Container(
        width: width / 1.7,
        height: height / 12,
        color: Colors.blue,
        child: const Padding(
          padding: EdgeInsets.all(18.0),
          child: Text(
            "Hotel Search ",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
