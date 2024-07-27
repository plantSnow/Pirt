import 'package:flutter/material.dart';

class UserPhoto extends StatelessWidget {
  final String userName;
  final String personalQuote;

  const UserPhoto({super.key, required this.userName, required this.personalQuote});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth,
      height: (160/812)*screenHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: screenWidth,
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
              child: ClipOval(
                child: Image.asset(
                  'assets/images/pirt_logo.png', 
                  fit: BoxFit.contain,
                ),
              )
            ),
          ),
          SizedBox(height: (20/812)*screenHeight,), 
          Text(
            userName,
            style: const TextStyle(
              color: Color(0xff10275a),
              fontSize: 20,
              fontFamily: 'YuYang',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: (30/812)*screenHeight,),
          Align(
            alignment: const Alignment(0, 0.4),
            child: Text(
              personalQuote,
              style: const TextStyle(
                color: Color(0xff8586a9),
                fontFamily: 'DingTalk',
                fontSize: 14,
              ),
            ),
          ),
        ], 
      ),
    );
  }
}