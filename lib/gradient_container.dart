import 'package:flutter/material.dart';
import 'package:dice_app/hello_world.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.centerRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: const [
            Color.fromARGB(255, 78, 13, 163),
            Color.fromARGB(255, 12, 122, 173),
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(child: HelloWorld()),
    );
  }
}
