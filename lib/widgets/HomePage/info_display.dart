import 'package:flutter/material.dart';

class InfoDisplay extends StatelessWidget {
  final String info;
  const InfoDisplay({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(children: [
      SizedBox(
        height: (245/812)*screenHeight,
        width: (335/375)*screenWidth,
        child: Stack(children: [
          Positioned(
            left: (32.25/375)*screenWidth,
            bottom: 0,
            child: Container(
              width: (294.31/375)*screenWidth,
              height: (164.43/812)*screenHeight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: const Color(0xff7d87e7),
              ),
            )
          ), 
          Positioned(
            left: (27.5/375)*screenWidth,
            child: Container(
              width: (330/375)*screenWidth,
              height: (245/812)*screenHeight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                boxShadow: const [
                  BoxShadow(
                      color: Color(0xfff1f6ff),
                      blurRadius: 13,
                      offset: Offset(-3, 7),
                  ),
                ],
                gradient: const LinearGradient(begin: Alignment.bottomLeft, end: Alignment.topRight, colors: [Color(0xff7d87e7), Color(0xbc7d87e7)], ),
              ),
            )
          ), 
          Positioned(
            left: (27.5/375)*screenWidth,
            child: Container(
              width: (330/375)*screenWidth,
              height: (240/812)*screenHeight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter, 
                  end: Alignment.bottomCenter, 
                  colors: [Color(0x009ca5f2), Color(0xff9ca5f2)], 
                ),
              ),
            )
          )
        ])
      ), 
      SizedBox(
        height: (30/375)*screenHeight, 
        width: screenWidth,
      )
    ]);
  }
}