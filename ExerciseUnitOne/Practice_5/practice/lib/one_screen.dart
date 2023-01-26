import 'package:flutter/material.dart';
import 'package:practice/immutable_widget.dart';

class OneScreen extends StatelessWidget {
  const OneScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: const Text('Practice web application'),
          actions: const <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(Icons.edit),
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            ImmutableWidget(),
          ],
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.lightBlue,
            child: const Center(
              child: Text('This is sample text.'),
            ),
          ),
        ),
      );
}
