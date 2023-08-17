import 'dart:math';

import 'package:flutter/material.dart';

var randomizer = Random();
int currentImg = 1;

class RollDice extends StatefulWidget {
  const RollDice({super.key});
  @override
  State<RollDice> createState() {
    return _RollDiceState();
  }
}

class _RollDiceState extends State<RollDice> {
  var activeImage = 'assets/images/dice-1.png';

  void diceRoller() {
    setState(() {
      int currentImg = randomizer.nextInt(6) + 1;
      activeImage = 'assets/images/dice-$currentImg.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          activeImage,
          width: 200,
        ),
        TextButton(onPressed: diceRoller, child: const Text('RollDice'))
      ],
    );
  }
}
