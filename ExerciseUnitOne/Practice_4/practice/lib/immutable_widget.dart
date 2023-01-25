import 'package:flutter/material.dart';

class ImmutableWidget extends StatelessWidget {
  
  const ImmutableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Container(
          color: Colors.purple,
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: _buildShinyCircle(),
          ),
        ),
      ),
    );
  }
  
  Widget _buildShinyCircle() => Container(
    decoration: const BoxDecoration(
      shape: BoxShape.circle,
      gradient: RadialGradient(
        colors: [
          Colors.lightBlueAccent,
          Colors.lightBlue
        ]
      )
    ),
  );
}
