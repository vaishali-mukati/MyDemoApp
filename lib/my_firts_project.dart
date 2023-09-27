import 'package:flutter/material.dart';
import 'package:first_app/style_text.dart';
import 'package:first_app/Dice_Image.dart';

    var startAlignment = Alignment.topLeft;
    var endAlignment = Alignment.bottomRight;
 class GradientContainer extends StatelessWidget{
   var activeImages = 'assets/Images/dice_3.jpg';
  GradientContainer(this.color1,this.color2);

      final Color color1;
      final Color color2;

      GradientContainer.purple({super.key})
   : color1 = Colors.deepPurple,
     color2 = Colors.indigo;  
   @override
  Widget build(context){
    return Container(
          decoration:  BoxDecoration(
            gradient: LinearGradient(
              colors: [color1,color2],
            begin: startAlignment,
            end: endAlignment,
            ),
          ),
          child:  Center(
            child:DiceRoll(),
            ),
          );
    }
}