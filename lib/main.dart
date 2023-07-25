import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 196, 196, 196),
          Color.fromARGB(255, 133, 133, 133),
        ),
      ),
    ),
  );
}
