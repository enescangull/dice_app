import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(
          const Color.fromARGB(255, 204, 204, 204),
          const Color.fromARGB(255, 124, 124, 124),
        ),
      ),
    ),
  );
}
