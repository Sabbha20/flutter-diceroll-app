import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';
import 'dart:math';

final myRandom = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currDiceNumber = 2;
  // var activeDiceImage = "assets/images/dice-1.png";
  void rollDice() {
    setState(() {
      // activeDiceImage = "assets/images/dice-6.png";
      currDiceNumber = myRandom.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const StyledText("Welcome!!!"),
        const SizedBox(
          height: 20,
        ),
        Image.asset(
          "assets/images/dice-$currDiceNumber.png",
          width: 200.0,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              textStyle: const TextStyle(
                fontSize: 28,
              )),
          child: const StyledText("Roll Dice"),
        )
      ],
    );
  }
}
