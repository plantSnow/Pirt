import 'package:flutter/material.dart';

class UserPhoto extends StatelessWidget {
  const UserPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: (100/375)*screenWidth,
      height: (157/812)*screenHeight,
      child: Stack(
        children:[
          Positioned.fill(
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: (86/375)*screenWidth,
                height: (86/812)*screenHeight,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xfff1f6ff),
                      blurRadius: 13,
                      offset: Offset(-3, 7),
                    ),
                  ],
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                width: (78/375)*screenWidth,
                height: (78/812)*screenHeight,
                child: const FlutterLogo(size: 78),
              ),
            ),
          ),
          Positioned(
              left: (2/375)*screenWidth,
              top: (104/812)*screenHeight,
              child: const Text(
                  "种下大雪",
                  style: TextStyle(
                      color: Color(0xff10275a),
                      fontSize: 20,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w700,
                  ),
              ),
          ),
          const Positioned.fill(
            child: Align(
              alignment: Alignment(0, 0.4),
              child: Text(
                "诗酒趁年华...",
                style: TextStyle(
                  color: Color(0xff8586a9),
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}