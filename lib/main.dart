import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 177, 143, 236),
          Color.fromARGB(255, 142, 145, 236),
        ),
      ),
    ),
  );
}
//widgets are special kind of objects

