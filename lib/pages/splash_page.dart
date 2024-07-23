// 暂时弃用 启动页用图片实现 这个界面不知道什么时候用得到 maybe新建的打开页？
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Center(
            child: Container(
              height: (7 / 11) * screenHeight,
              width: screenWidth,
              color: const Color(0x005b67ca),
              padding: const EdgeInsets.all(10),
              margin: EdgeInsets.only(top: (2 / 11) * screenWidth),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Image.asset(
                    'assets/images/pirt_logo.png',
                    fit: BoxFit.cover
                  ),
                ),
              ),
            ),
          ),
          Column(children: [
            SizedBox(
              width: 0.9 * screenWidth,
              height: 60,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 41, 60, 153),
                ),
                child: const Text(
                  "就此出发",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                )
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              "去我爱的地方，与我爱的人",
              style: TextStyle(
                color: Color.fromARGB(255, 6, 59, 103),
                fontSize: 18,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w300,
                decoration: TextDecoration.none),
            )
          ])
        ],
      )
    );
  }
}
