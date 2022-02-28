import 'package:flutter/material.dart';
import 'dart:math';

class Rotate extends StatefulWidget {
  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<Rotate> {
  double _size = 100.0;

  Tween<double> _animationTween = Tween(begin: 0, end: pi * 2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animations'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TweenAnimationBuilder<double>(
              tween: _animationTween,
              duration: Duration(seconds: 10),
              builder: (context, double value, child) {
                return Transform.rotate(
                  angle: value,
                  child: Container(
                    color: Colors.blue,
                    height: _size,
                    width: _size,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
