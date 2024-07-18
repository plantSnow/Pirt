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
        children: [
          Container(
            height: (266/812)*screenHeight,
            width: (248/375)*screenWidth, 
            color: const Color(0x005b67ca),
            padding: const EdgeInsets.all(30), 
            child: Image.asset(
              'assets/images/pirt_logo.png', 
              fit: BoxFit.cover
            ),
          ), 
          FractionallySizedBox(
            widthFactor: 0.8,
            child: Column(
              children:[
                ElevatedButton(
                  onPressed: (){},
                  child: const Text(
                    "就此出发", 
                    style: TextStyle(
                      color: Colors.white, 
                      fontSize: 16, 
                      fontWeight: FontWeight.bold
                    ),
                  )
                ), 
                const SizedBox(height: 30), 
                const Text(
                  "去我爱的地方，与我爱的人", 
                  style: TextStyle(
                    color: Color(0x002c406e), 
                    fontSize: 16, 
                  )
                )
              ]
            )
          )
        ],
      )
    );
  }
}