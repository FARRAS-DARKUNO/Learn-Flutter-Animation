import 'package:flutter/material.dart';

class Implicit extends StatefulWidget {
  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<Implicit> {
  bool _isBig = false;
  double _size = 100.0;

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
            AnimatedContainer(
              duration: Duration(seconds: 1),
              color: Colors.blue,
              height: _size,
              width: _size,
            ),
            ElevatedButton(
              child: Text('Animate'),
              onPressed: () {
                setState(() {
                  _size = _isBig ? 200 : 100;
                  _isBig = !_isBig;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
