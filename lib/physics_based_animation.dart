import 'package:flutter/material.dart';


class SpringAnimation extends StatefulWidget {
  const SpringAnimation({super.key});

  @override
  _SpringAnimationState createState() => _SpringAnimationState();
}
class _SpringAnimationState extends State<SpringAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 3),
  )..forward();
  late final Animation<double> _animation = Tween<double>(
    begin: 0,
    end: 400,
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticOut,
  ));

   void _startAnimation() {
    _controller.reset();
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Stack(
                children: [
                Positioned(
                  left: 70 ,
                  top: _animation.value,
                  child: child!,
                )
              ]);
            },
            child: GestureDetector(
              onTap: (){
                _startAnimation();
              },
              child: Container(
                height: 100,
                width: 250 ,
                decoration: BoxDecoration(color: const Color(0xFF00EF3C),
                borderRadius: BorderRadius.circular(10)                
                ),
                child: const Center(
                  child: Text('SEMAPHORE', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold), )))
            ),
          ),
        ),
        
      ),
    );
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
