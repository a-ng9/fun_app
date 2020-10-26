import 'package:flutter/material.dart';
//import 'package:month_picker_dialog/month_picker_dialog.dart';

class CalendarButton extends StatefulWidget {
  final DateTime initialDate;

  const CalendarButton({Key key, @required this.initialDate}) : super(key: key);

  @override
  _CalendarButtonState createState() => _CalendarButtonState();
}

class _CalendarButtonState extends State<CalendarButton> {
  DateTime selectedDate;

  @override
  void initState() {
    super.initState();
    selectedDate = widget.initialDate;
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
