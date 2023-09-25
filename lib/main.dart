import 'package:first_app/my_firts_project';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My app')),
        body: GradientContainer(),
      ),
    ),
  );
}
