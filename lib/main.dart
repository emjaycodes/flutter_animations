import 'package:flutter/material.dart';
import 'package:flutter_animations/hero_animation.dart';
import 'package:flutter_animations/implicit_animation.dart';
import 'package:flutter_animations/physics_based_animation.dart';
import 'package:flutter_animations/rive_animation.dart';

import 'lottie_animations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: RiveAnimations(),
    );
  }
}

