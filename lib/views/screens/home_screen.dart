import 'package:flutter/material.dart';
import 'package:hotelsgo_task/views/widgets/home_screen_widgets/date_range_field_widget.dart';
import 'package:hotelsgo_task/views/widgets/home_screen_widgets/nationality_drop_down_list.dart';
import 'package:hotelsgo_task/views/widgets/home_screen_widgets/room_drop_down_list.dart';
import 'package:hotelsgo_task/views/widgets/home_screen_widgets/search_button.dart';
import 'package:hotelsgo_task/views/widgets/home_screen_widgets/select_city_widget.dart';
import 'package:hotelsgo_task/views/widgets/home_screen_widgets/title_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SingleChildScrollView(
            child: Stack(children: [
      Image.asset(
        "assets/images/background.jpg",
        fit: BoxFit.fill,
        height: height,
      ),
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height / 2,
            ),
            const TitleWidget(),
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              height: height * 0.32,
              width: width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  gradient: const LinearGradient(colors: [
                    Colors.blue,
                    Color.fromARGB(255, 155, 200, 236)
                  ])),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    const SelectCityWidget(),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    DateRangeFieldWidget(),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    const NationalityDropDownList(),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    const RoomDropDownList()
                  ],
                ),
              ),
            ),
            SizedBox(width: width, height: 40, child: const SearchButton())
          ],
        ),
      )
    ])));
  }
}
