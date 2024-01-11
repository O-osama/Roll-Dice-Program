import 'package:flutter/material.dart';
import 'dart:math';
final randmoizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller ({super.key});

  @override
  State<DiceRoller > createState() {
return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller > {

  var currentDiceRoll = 1;
  
  void rollDice() {
    
  setState(() {
    currentDiceRoll = randmoizer.nextInt(6)+1;

    
  });
    
  }
@override
  Widget build(BuildContext context) {
    return  Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/imges/dice-$currentDiceRoll.png',
              width: 200,
            ),
            const SizedBox(height:20),
            TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    fontSize: 28,
                  ),
                ),
                child: const Text('roll dice'))
          ],
        );

  }
}