// 暂时弃用 启动页用图片实现 这个界面不知道什么时候用得到 maybe新建的打开页？
import 'package:flutter/material.dart';
import '../widgets/FirstPage/first_button.dart';

class FistEnterPage extends StatelessWidget {
  const FistEnterPage({super.key});

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
              margin: EdgeInsets.only(
                top: (2 / 11) * screenWidth
              ),
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
          const FirstButton(),
        ]
      )
    ); 
  }
}
