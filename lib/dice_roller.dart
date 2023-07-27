import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currenDiceRoll = 2;

  void rollDice() {
    setState(() {
      currenDiceRoll = randomizer.nextInt(6) + 1;
    });

    print('You roll $currenDiceRoll');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$currenDiceRoll.png",
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            shadowColor: Colors.black,
            backgroundColor: Colors.black,
            textStyle: const TextStyle(fontSize: 28),
            // padding: const EdgeInsets.only(
            //   top: 20,
            // ),
          ),
          child: const Text('Roll the Dice!'),
        )
      ],
    );
  }
}
