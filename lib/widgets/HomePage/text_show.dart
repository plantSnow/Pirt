import 'package:flutter/material.dart';


// 文本展示, 类似标题, 就是蓝色框和紫色框中间的那段文字标题, 因为出现了两次所以我抽离成单独的组件
class TextShow extends StatelessWidget {
  final String boldText, text;

  const TextShow({super.key, required this.boldText, required this.text});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            boldText, 
            style: const TextStyle(
              fontSize: 24, 
              fontFamily: 'ShuHei', 
              color: Color(0xff12175e), 
            ),
          ), 
          const Expanded(child: SizedBox(child: Divider(),)),
          Text(
            text, 
            style: const TextStyle(
              fontSize: 11,
              fontFamily: 'YuYang',
              color: Color(0xff69696c), 
            ),
          )
        ],
      ),
    );
  }
}