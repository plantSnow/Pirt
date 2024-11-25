import 'package:flutter/material.dart';

class CityFootprintPage extends StatelessWidget {
  const CityFootprintPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text("城市足迹"),
        centerTitle: true,
      ),
      body: Container(), 
    );
  }
}