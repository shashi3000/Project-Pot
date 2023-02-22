import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Temperature extends StatefulWidget {
  const Temperature({super.key});

  @override
  State<Temperature> createState() => _TemperatureState();
}

class _TemperatureState extends State<Temperature> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        height: MediaQuery.of(context).size.height * 1,
           width: MediaQuery.of(context).size.width * 1,
             // Below is the code for Linear Gradient.
           decoration: const BoxDecoration(
               gradient: LinearGradient(
               colors: [Colors.orange, Colors.red],
              begin: Alignment.bottomLeft,
               end: Alignment.topRight,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 250),
              child: AnimatedTextKit(
                totalRepeatCount: 1,
                isRepeatingAnimation: true,
                animatedTexts: [
                  TyperAnimatedText(
                    'Temperature.....',
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.right,
                    speed: Duration(milliseconds: 100)
                  ),
              ],
              repeatForever: true,
              pause: Duration(milliseconds: 10000),
              ),
            ),
          ],
        ),
      ),);
  }
}