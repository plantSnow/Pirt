import 'package:flutter/material.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';


class Calendar extends StatefulWidget {
  final int calendarType;
  const Calendar({super.key, required this.calendarType});

  @override
  // ignore: no_logic_in_create_state
  State<Calendar> createState() => _CalendarState(calendarType: calendarType);
}

class _CalendarState extends State<Calendar> {
  int calendarType;
  _CalendarState({required this.calendarType});

 
  @override
  Widget build(BuildContext context) {
  // double screenHeight = MediaQuery.of(context).size.height;
  // double screenWidth = MediaQuery.of(context).size.width;
    late CalendarDatePicker2Type calendarChoose;
    switch(calendarType){
      case 0: 
        calendarChoose = CalendarDatePicker2Type.single;
        break;
      case 1: 
        calendarChoose = CalendarDatePicker2Type.multi;
        break;
      case 2:
        calendarChoose = CalendarDatePicker2Type.range;
        break;
      // case 3:
        // calendarChoose = CalendarDatePicker2Type
      default:
        break;
      }

    // TODO: 调整日历颜色和大小
    return Hero(
      tag: 'calendar', 
      child: CalendarDatePicker2WithActionButtons(
        value: [DateTime.now()], 
        config: CalendarDatePicker2WithActionButtonsConfig(
          calendarType: calendarChoose, 
          selectedDayTextStyle: const TextStyle(
            color: Colors.white, 
            fontWeight: FontWeight.w700
          ),
          selectedDayHighlightColor: const Color(0xff5b67ca),
          centerAlignModePicker: true,
          cancelButton: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: const Color(0xff5b67ca), width: 1.50, ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8, ),
            child: const Text(
              "取消",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff5b67ca),
                fontSize: 14,
                fontFamily: "DingTalk",
                fontWeight: FontWeight.w500,
              ),
            ),
          ), 
          okButton: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: const Color(0xff5b67ca), width: 1.50, ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8, ),
            child: const Text(
              "确定",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff5b67ca),
                fontSize: 14,
                fontFamily: "DingTalk",
                fontWeight: FontWeight.w500,
              ),
            ),
          ), 
          closeDialogOnCancelTapped: true, 
        ), 
        onCancelTapped: () => Navigator.maybePop(context), 
        onOkTapped: (){},// TODO: 按下按钮后向外传参
      ), 
    );
  }
}