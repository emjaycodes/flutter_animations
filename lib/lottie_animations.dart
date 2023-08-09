import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimations extends StatelessWidget {
  const LottieAnimations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50,),
            SizedBox(
              height: 200,
              width: 200,
              child: LottieBuilder.asset('assets/shopping.json')),
            const SizedBox(height: 50,),
            const Text('add items to cart',style: TextStyle(fontSize: 30),)
          ],
        ),
      )
    );
  }   
}