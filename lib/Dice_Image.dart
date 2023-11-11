import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoll extends StatefulWidget{
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() {
      return _DiceRoller();
  }
}

class _DiceRoller extends State<DiceRoll>{

var currentDiceRoll = 1;

  void _rolldice(){

    setState(() {
     currentDiceRoll = Random().nextInt(6) +1;
    });
  }

    @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize:MainAxisSize.min,
      children:[
        Image.asset(
          'assets/Images/dice-$currentDiceRoll.png',
          width:200,
        ),
        const SizedBox(height:20),
        TextButton(
          onPressed: _rolldice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(top:19),
            foregroundColor:Colors.white,
            textStyle:const TextStyle(
              fontSize: 19,
            ),
          ),
          child:const Text('Roll Dice'),
        ),
      ],
    );
  }
}