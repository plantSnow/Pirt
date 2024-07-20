import 'package:flutter/material.dart';

class TopBar extends StatefulWidget {
  const TopBar({super.key});

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    // TODO: 文案待更改
    // ignore: constant_identifier_names
    const String GreetingText = "早上好，种下大雪";
    // ignore: constant_identifier_names
    const String UserChangableText = "可自定义文案";
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
              child: Stack(
                children: [
                  const Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: SizedBox(
                        width: 36,
                        height: 36,
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        width: 36,
                        height: 36,
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
          const Positioned(
            left: 15,
            top: 72,
            child: Text(
              UserChangableText,
              style: TextStyle(
                color: Color(0xff575757),
                fontSize: 14,
              ),
            ),
          ),
          const Positioned(
            left: 15,
            top: 20,
            child: Text(
              GreetingText,
              style: TextStyle(
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