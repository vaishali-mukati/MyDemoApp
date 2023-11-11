import 'package:first_app/my_firts_project.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
       appBar: AppBar(title: const Text('My app')),
        body:  GradientContainer(
      const Color.fromARGB(255, 34, 45, 255),
       const Color.fromARGB(221, 29, 53, 145)
        ),
      ),
    ),
  );
}
