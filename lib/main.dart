import 'package:flutter/material.dart';
import 'package:newapp/gradientcontainer.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(121, 87, 1, 119),
          title: const Text(
            'Android Dev Team Assessments',
            style: TextStyle(
              fontSize: 25,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        body: const GradientContainer(),
      ),
    ),
  );
}
