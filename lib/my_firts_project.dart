import 'package:flutter/material.dart';
import 'package:first_app/style_text.dart';

    var startAlignment = Alignment.topLeft;
    var endAlignment = Alignment.bottomRight;
 class GradientContainer extends StatelessWidget{
    
 const GradientContainer(this.color1,this.color2);

      final Color color1;
      final Color color2;
      void Rolldice(){

      }
   const GradientContainer.purple({super.key}) 
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
            child:Column(children:[
              Image.asset(
                'assets/Images/images.jpg',
                 width:200,
              ),
              TextButton(onPressed: Rolldice, child:const Text('click here')),
            ],
            ),
            ),
          );
    }
}