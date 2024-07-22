import 'package:flutter/material.dart';

class TopBar extends StatefulWidget { 
  final String greetingText;
  final String userChangableText;
  const TopBar({super.key, required this.greetingText, required this.userChangableText});

  @override
  // ignore: no_logic_in_create_state
  State<TopBar> createState() => _TopBarState(greetingText: greetingText, userChangableText: userChangableText);
}

class _TopBarState extends State<TopBar> {
  String greetingText;
  String userChangableText;

  _TopBarState({required this.greetingText, required this.userChangableText});
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    // TODO: 文案待更改
    return Container(
      //顶部显示栏的背景颜色
      width: (360/375)*screenWidth,
      height: (114/812)*screenHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xff0095ff), width: 1, ),//TODO: 颜色好丑
        gradient: const LinearGradient(
          begin: Alignment.topCenter, 
          end: Alignment.bottomCenter, 
          colors: [Color(0x000094ff), Color(0xff6edcfa)], 
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            right: (10/360)*screenWidth,
            top: (24/812)*screenHeight,
            child: SizedBox(
              width: (40/360)*screenWidth,
              height: (40/360)*screenWidth,
              child: Stack(children: [
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: SizedBox(
                        width: (40/375)*screenWidth,
                        height: (40/812)*screenHeight,
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                          width: (40/375)*screenWidth,
                          height: (40/812)*screenHeight,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0xfff1f6ff),
                              blurRadius: 13,
                              offset: Offset(-3, 7),
                            ),
                          ],
                          color: Colors.white,
                        ),
                        padding: const EdgeInsets.only(top: 1, bottom: 2, ),
                        child: const Icon(Icons.person)
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: (30/375)*screenWidth,
            top: (80/812)*screenHeight,
            child: Text(
              userChangableText,
              style: const TextStyle(
                color: Color(0xff575757),
                fontSize: 14,
              ),
            ),
          ),
          Positioned(
            left: (15/375)*screenWidth,
            top: (20/812)*screenHeight,
            child: Text(
              greetingText,
              style: const TextStyle(
                color: Color(0xff12175e),
                fontSize: 28,
                fontFamily: "Roboto",//TODO: 字体待更改
              ),
            ),
          ),
        ],
      ),
    );
  }
}