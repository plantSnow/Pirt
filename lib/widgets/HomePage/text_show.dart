import 'package:flutter/material.dart';

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