import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

// 搜索框
// TODO: 传参与搜索功能待完成, 搜索需等数据库建立完毕(?)
class SearchingField extends StatefulWidget {
  final Function callBack;
  const SearchingField({super.key, required this.callBack});

  @override
  // ignore: no_logic_in_create_state
  State<SearchingField> createState() => _SearchingFieldState(callBack: callBack);
}

class _SearchingFieldState extends State<SearchingField> {
  Function callBack;
  
  _SearchingFieldState({required this.callBack});

  @override
  Widget build(BuildContext context) {
    final myController = TextEditingController();
    final myFocusNode = FocusNode();
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: (50/812)*screenHeight,
      width: (327/375)*screenWidth,
      decoration: BoxDecoration(
        color: const Color(0xfff6f6f6), 
        borderRadius: BorderRadius.circular(15)
      ),
      padding: EdgeInsets.all((10/375)*screenWidth),
      margin: EdgeInsets.all((30/812)*screenHeight),
      child: TextField(
        // maxLines: 1,
        controller: myController, 
        autofocus: false,
        decoration: InputDecoration(
          hintText: '搜索您的旅行计划', 
          hintStyle: const TextStyle(
            color: Color(0xffb0b5dd), 
            fontFamily: 'YuYang', 
            fontSize: 14, 
          ),
          prefixIcon: const Icon(
            Icons.search_outlined, 
            color: Color(0xffb0b5dd),
          ),
          suffixIcon: GestureDetector(
            // 按下图标 'x' 清空输入框
            onTap: () {
              SchedulerBinding.instance.addPostFrameCallback((_) {
                myController.text = '';
              });
            },
            child: const Icon(
              Icons.clear_outlined, 
              color: Color(0xffb0b5dd),
            ), 
          ), 
          border: InputBorder.none, 
          isDense: true, 
        ),
        focusNode: myFocusNode,
        onSubmitted: (String value) {
          widget.callBack(value);
          myFocusNode.unfocus();
        },
      )
    );
  }
}