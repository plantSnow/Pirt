import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../pages/PlanPage/add_plan_page.dart';

class FirstButton extends StatelessWidget {
  const FirstButton({super.key});

  @override
  Widget build(BuildContext context) {
    // double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
   
    return Column(children: [
      SizedBox(
        width: 0.9 * screenWidth,
        height: 60,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                  builder: (context) => const AddPlan()));
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff7d87e7),
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
          decoration: TextDecoration.none
        ),
      )
    ]);
  }
}