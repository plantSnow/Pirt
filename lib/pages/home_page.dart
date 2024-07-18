import 'package:flutter/material.dart';
import 'package:pirt/widgets/HomePage/top_bar.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0.5*(1-360/375)*screenWidth, 
            top: 0.04*screenHeight,
            child: const Column(
              children: [
                TopBar(), 
              ]
            ), 
          ),
          
          
        ]         
      )
    );
  }
}