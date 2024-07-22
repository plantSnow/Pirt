import 'package:flutter/material.dart';

// TODO: 稀烂的, 功能完全没做出来, 这只是个图形
class InfoArrow extends StatefulWidget {
  const InfoArrow({super.key});

  @override
  State<InfoArrow> createState() => _InfoArrowState();
}

class _InfoArrowState extends State<InfoArrow> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
    width: 324.54,
    height: 9.67,
    child: Stack(
        children:[
            Positioned.fill(
                child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                        width: 129.43,
                        height: 9.67,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xfff2f3f5),
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 98.52,
                top: 0,
                child: Container(
                    width: 129.43,
                    height: 9.67,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xff7d88e7),
                    ),
                ),
            ),
            Positioned.fill(
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        width: 129.43,
                        height: 9.67,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xffe8f3ff),
                        ),
                    ),
                ),
            ),
        ],
    ),
);
  }
}

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
            // left: (5/375)*screenWidth,
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
                gradient: const LinearGradient(
                  begin: Alignment.bottomLeft, 
                  end: Alignment.topRight, 
                  colors: [
                    Color(0xff7d87e7), 
                    Color(0xbc7d87e7)
                  ], 
                ),
              ),
            )
          ), 
          Positioned(
            left: (15/375)*screenWidth,
            top: (15/812)*screenHeight, 
            child: Text(
              info,
              style: const TextStyle(
                color: Colors.white, 
                fontSize: 18, 
                fontWeight: FontWeight.w900
              ), 
            )
          ), 
          Positioned(
            bottom: 0,
            right: (15/375)*screenWidth,
            child: const Text(
              '尽情期待吧~', 
              style: TextStyle(
                color: Color(0xbfcdecff), 
                fontSize: 16
              ),
            )
          ), 
        ])
      ), 
      SizedBox(
        height: (20/375)*screenHeight, 
        width: screenWidth,
        child: Column(children: [
          SizedBox(height: (10/375)*screenWidth,), 
          const InfoArrow()
        ]),
      )
    ]);
  }
}