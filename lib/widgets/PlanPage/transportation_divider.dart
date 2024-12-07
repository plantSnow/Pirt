import 'package:flutter/material.dart';

class TransportationDivider extends StatelessWidget {
  const TransportationDivider({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: (0.5)*screenWidth,
      height: 0.1*screenHeight,
      child: Stack(
        children: [
          Positioned( 
            left: (5/375)*screenWidth,
            top: 10,
            child: Container(
              width: (30/375)*screenWidth,
              height: (30/812)*screenHeight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100), 
                color: Colors.green[100]
              ),
              margin: EdgeInsets.all((10/375)*screenWidth),
              child: const Icon(Icons.pedal_bike_outlined),
            ), 
          ), 
          // TODO: 未能实现分割线穿过图标
          const Positioned(
            top: 0,
            child: Divider()
          )
        ],
      ),
    );
  }
}