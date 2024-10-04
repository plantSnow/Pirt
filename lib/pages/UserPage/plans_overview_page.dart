import 'package:flutter/material.dart';

class PlansOverviewPage extends StatelessWidget {
  const PlansOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text("计划总览"),
        centerTitle: true,
      ),
      body: Container(), 
    );
  }
}