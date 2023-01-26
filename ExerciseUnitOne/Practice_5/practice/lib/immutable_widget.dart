import 'package:flutter/material.dart';
import "dart:math" show pi;
//import "dart:math" as math;

class ImmutableWidget extends StatelessWidget {
  const ImmutableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.green),
      foregroundDecoration: const BoxDecoration(
          backgroundBlendMode: BlendMode.colorBurn,
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xAA0d6123),
                Color(0x00000000),
                Color(0xAA0d6123)
              ])),
      child: Center(
        child: Transform.rotate(
          angle: 180 / pi,
          //angle: 180 / math.pi,
          child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.deepPurple.withAlpha(120),
                        offset: Offset.fromDirection(1.0, 30.0),
                        blurRadius: 15.0,
                        spreadRadius: 4.0,
                        blurStyle: BlurStyle.normal),
                  ],
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: _buildShinyCircle(),
              )),
        ),
      ),
    );
  }

  Widget _buildShinyCircle() => Container(
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: RadialGradient(
                colors: [Colors.lightBlueAccent, Colors.lightBlue],
                center: Alignment(-0.3, -0.5)),
            boxShadow: [BoxShadow(blurRadius: 20.0)]),
      );
}