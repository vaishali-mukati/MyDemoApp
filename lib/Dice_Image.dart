import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoll extends StatefulWidget{
  @override
  State<DiceRoll> createState() {
      return _DiceRoller();
  }
}

class _DiceRoller extends State<DiceRoll>{
  var currentDice = 2;

  void Rolldice(){

    setState(() {
      currentDice =  Random().nextInt(4) +1;
    });
  }

    @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize:MainAxisSize.min,
      children:[
        Image.asset(
          'assets/Images/dice_$currentDice.jpg',
          width:200,
        ),
        const SizedBox(height:20),
        TextButton(
          onPressed: Rolldice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(top:19),
            foregroundColor:Colors.white,
            textStyle:const TextStyle(
              fontSize: 19,
            ),
          ),
          child:const Text('click here'),
        ),
      ],
    );
  }
}