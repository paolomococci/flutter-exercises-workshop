import 'package:flutter/material.dart';
import 'package:practice/one_screen.dart';

void main() => runApp(const StaticApp());

class StaticApp extends StatelessWidget {
  
  const StaticApp({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(home: OneScreen(),);
}
