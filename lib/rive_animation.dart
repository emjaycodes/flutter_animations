import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class RiveAnimations extends StatelessWidget {
  const RiveAnimations({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                    color: Colors.blue
              ),
          width: 300,
            height: 300,
            child: const RiveAnimation.asset('assets/ball.riv')
            ),
      ),
    );
  }
}