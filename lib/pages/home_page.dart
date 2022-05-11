import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 21;
  final String name = "Dart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("My $days days of $name journey."),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
