import 'package:flutter/material.dart';

class OKButton extends StatelessWidget {
  const OKButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        // TODO: 传参+回退
        Navigator.maybePop(context);
      }, 
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Color(0xff5b67ca))
      ),
      child: const Text(
        '创建', 
        style: TextStyle(
          color: Colors.white, 
          fontFamily: 'ShuHei', 
          fontSize: 18, 
          fontWeight: FontWeight.w500
        ),
      )
    );
  }
}

/*
 * 
 * 
 * Container(
    width: 327,
    height: 56,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
            BoxShadow(
                color: Color(0xfff1f6ff),
                blurRadius: 13,
                offset: Offset(-3, 7),
            ),
        ],
        color: Color(0xff5b67ca),
    ),
)
 */