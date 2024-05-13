import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Column(
          children: [
            Image.asset('pirt_logo.png'), 
            ElevatedButton(
              onPressed: (){}, 
              child: const Text('This is Splash Page!')
            )
          ],
        ), 
      );
  }
}