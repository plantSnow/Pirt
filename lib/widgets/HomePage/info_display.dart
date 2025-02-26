import 'package:flutter/material.dart';

// TODO: 稀烂的, 功能完全没做出来, 这只是个图形, 这根条不太能做啊
// TODO：用carousel轮播来实现这个对未来与过去旅程的观看 https://m3.material.io/components/carousel/guidelines#13b90133-e09f-41e1-b707-53f4ab2f54ef
// 紫色框框下面那根进度条
class InfoArrow extends StatefulWidget {
  const InfoArrow({super.key});

  @override
  State<InfoArrow> createState() => _InfoArrowState();
}

class _InfoArrowState extends State<InfoArrow> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: (300 / 375) * screenWidth,
      height: (9.67 / 812) * screenHeight,
      child: Stack(
        children: [
          Positioned.fill(
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: (300 / 375) * screenWidth,
                height: (9.67 / 812) * screenHeight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xfff2f3f5),
                ),
              ),
            ),
          ),
          Positioned(
            left: (70 / 375) * screenWidth,
            top: 0,
            child: Container(
              width: (150 / 375) * screenWidth,
              height: (9.67 / 812) * screenHeight,
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
                width: (90 / 375) * screenWidth,
                height: (9.67 / 812) * screenHeight,
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

// 紫色框框+进度条, 功能实现得不太理想
class InfoDisplay extends StatelessWidget {
  final String info;
  const InfoDisplay({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(children: [
      SizedBox(
          height: (220 / 812) * screenHeight,
          width: (335 / 375) * screenWidth,
          child: Stack(children: [
            Positioned(
                // left: (5/375)*screenWidth,
                child: Container(
              width: (330 / 375) * screenWidth,
              height: (220 / 812) * screenHeight,
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
                  colors: [Color(0xff7d87e7), Color(0xbc7d87e7)],
                ),
              ),
            )),
            Positioned(
                left: (15 / 375) * screenWidth,
                top: (15 / 812) * screenHeight,
                child: Text(
                  info,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w900),
                )),
            Positioned(
                bottom: 0,
                right: (15 / 375) * screenWidth,
                child: const Text(
                  '尽情期待吧~',
                  style: TextStyle(color: Color(0xbfcdecff), fontSize: 16),
                )),
          ])),
      SizedBox(
        height: (20 / 375) * screenHeight,
        width: screenWidth,
        child: Column(children: [
          SizedBox(
            height: (10 / 375) * screenWidth,
          ),
          const InfoArrow()
        ]),
      )
    ]);
  }
}
