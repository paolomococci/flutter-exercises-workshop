import 'package:flutter/material.dart';
import 'package:practice/one_screen.dart';

void main() => runApp(const StaticApp());

class StaticApp extends StatelessWidget {
  const StaticApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData(
            brightness: Brightness.dark,
            primaryColor: Colors.green,
            appBarTheme: AppBarTheme(
                elevation: 10.0,
                toolbarTextStyle: const TextTheme(
                        titleMedium:
                            TextStyle(
                              fontFamily: 'Roboto', 
                              fontWeight: FontWeight.normal, 
                              fontSize: 24
                            ))
                    .bodyText2,
                titleTextStyle: const TextTheme(
                        titleMedium:
                            TextStyle(
                              fontFamily: 'Roboto', 
                              fontWeight: FontWeight.normal, 
                              fontSize: 24
                            ))
                    .headline6)),
        home: const OneScreen(),
      );
}
