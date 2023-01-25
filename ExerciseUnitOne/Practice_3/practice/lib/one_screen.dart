import 'package:flutter/material.dart';
import 'package:practice/immutable_widget.dart';

class OneScreen extends StatelessWidget {

  const OneScreen({super.key});

  @override
  Widget build(BuildContext context) => const Scaffold(
    body: Center(
      child: AspectRatio(
        aspectRatio: 1.0,
        child: ImmutableWidget(),
      ),
    ),
  );
}