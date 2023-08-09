import 'package:flutter/material.dart';

class ImplicitAnimations extends StatefulWidget {
  const ImplicitAnimations({Key? key}) : super(key: key);
  @override
  createState() => ImplicitAnimationsState();
}

class ImplicitAnimationsState extends State<ImplicitAnimations> {
  bool _isPressed = false;

  void _togglePressed() {
    setState(() {
      _isPressed = !_isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Color and Position Change'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: const Duration(seconds: 1),
                height: 200.0,
                width: 200.0,
                margin: EdgeInsets.only(
                  top: _isPressed ? 70.0 : 0.0,
                ),
                decoration: BoxDecoration(
                  color: _isPressed ? Colors.blue : Colors.red,
                  borderRadius: BorderRadius.circular(_isPressed ? 50.0 : 0.0),
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: _togglePressed,
                child: const Text('ANIMATE'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
