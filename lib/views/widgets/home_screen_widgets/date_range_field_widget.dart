import 'package:flutter/material.dart';

class DateRangeFieldWidget extends StatefulWidget {
  DateRangeFieldWidget({super.key});

  @override
  State<DateRangeFieldWidget> createState() => _DateRangeFieldWidgetState();
}

class _DateRangeFieldWidgetState extends State<DateRangeFieldWidget> {
  DateTimeRange dateRange =
      DateTimeRange(start: DateTime(2023, 11, 14), end: DateTime(2024, 12, 12));

  @override
  Widget build(BuildContext context) {
    final start = dateRange.start;
    final end = dateRange.end;
    double width = MediaQuery.of(context).size.width;
    Future pickDateRange() async {
      DateTimeRange? newDate = await showDateRangePicker(
          context: context,
          initialDateRange: dateRange,
          firstDate: DateTime(2000),
          lastDate: DateTime(2100));
      if (newDate == null) return; // pressed X
      setState(() {
        dateRange = newDate; // pressed save
      });
    }

    return SizedBox(
      width: width,
      child: ElevatedButton(
        style: ButtonStyle(
            padding: const MaterialStatePropertyAll(
              EdgeInsetsDirectional.all(12),
            ),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)))),
        onPressed: pickDateRange,
        child: Text(
          '${start.year}/${start.month}/${start.day} ==> ${end.year}/${end.month}/${end.day}',
          style: const TextStyle(color: Colors.blue),
        ),
      ),
    );
  }
}
