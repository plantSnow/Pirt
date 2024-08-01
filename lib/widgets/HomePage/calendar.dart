import 'package:flutter/material.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:pirt/my_icons.dart';


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
  
  List<DateTime?> _dialogueDatePickerValue = [DateTime.now()];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    late CalendarDatePicker2Type calendarChoose;
    switch (calendarType) {
      case 0: 
        calendarChoose = CalendarDatePicker2Type.single;
        break;
      case 1: 
        calendarChoose = CalendarDatePicker2Type.multi;
        break;
      case 2:
        calendarChoose = CalendarDatePicker2Type.range;
        break;
      default:
        break;
    }

    //工作日文本样式
    const dayTextStyle = TextStyle(color: Colors.black, fontWeight: FontWeight.w700);
    //周末文本样式
    final weekendTextStyle = TextStyle(color: Colors.grey[500], fontWeight: FontWeight.w600);
    //与当前日期相同的日期
    final anniversaryTextStyle = TextStyle(
      color: Colors.red[400],
      fontWeight: FontWeight.w700,
    );

    final config = CalendarDatePicker2WithActionButtonsConfig(
      //日文本样式
      dayTextStyle: dayTextStyle,

      //日期选择器类型——范围
      calendarType: calendarChoose,
      
      //所选日期的突出显示颜色
      selectedDayHighlightColor: Colors.purple[800],
      
      //用户点击取消按钮后关闭对话框
      closeDialogOnCancelTapped: true,
      
      //一周的第一天，0表示周日，6表示周六
      firstDayOfWeek: 1,
      
      // 自定义文本标签
      weekdayLabels: ['日', '一', '二', '三', '四', '五', '六'], 

      //工作日标签的自定义文本样式
      weekdayLabelTextStyle: const TextStyle(
        color: Colors.black87,
        fontWeight: FontWeight.bold,
      ),

      //日历模式切换控件的自定义文本样式
      controlsTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),

      //用于在控件中集中年份和月份文本标签的标志
      centerAlignModePicker: true,

      //模式选择器按钮图标的自定义图标
      customModePickerIcon: const SizedBox(),

      //选定日历日文本的自定义文本样式
      selectedDayTextStyle: dayTextStyle.copyWith(color: Colors.white),
      
      //提供对日历日文本样式的完全控制的功能
      dayTextStylePredicate: ({required date}) {
        TextStyle? textStyle;
        if (date.weekday == DateTime.saturday ||
            date.weekday == DateTime.sunday) {
          textStyle = weekendTextStyle;
        }
        if (DateUtils.isSameDay(date, DateTime.now())) {
          textStyle = anniversaryTextStyle;
        }
        return textStyle;
      }, 

      // 取消按钮
      cancelButton: const Text(
        "取消",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xff5b67ca),
          fontSize: 14,
          fontFamily: "DingTalk",
          fontWeight: FontWeight.w500,
        ),
      ),

      // 确定按钮
      okButton: const Text(
        "确定",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xff5b67ca),
          fontSize: 14,
          fontFamily: "DingTalk",
          fontWeight: FontWeight.w500,
        ),
      ), 
    );    
    
    return IconButton(
      onPressed: () async {
        final selectDate=await showCalendarDatePicker2Dialog(
          context: context,
          config: config,
          dialogSize: Size((325/375)*screenWidth, (400/812)*screenHeight), 
          value: _dialogueDatePickerValue, 
        );
        setState(() {
          if (selectDate != null) {
            _dialogueDatePickerValue = selectDate;
          }
        });
      }, 
      icon: const Icon(Icons.calendar_month_outlined,color: Colors.black,)
    );
  }
}