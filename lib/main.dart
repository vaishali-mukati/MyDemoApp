import 'package:first_app/my_firts_project.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
       appBar: AppBar(title: const Text('My app')),
        body:  GradientContainer(
      const Color.fromARGB(221, 114, 153, 163),
       const Color.fromARGB(221, 4, 52, 65)
        ),
      ),
    ),
  );
}
