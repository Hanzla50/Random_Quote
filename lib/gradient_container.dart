

import 'package:flutter/material.dart';
import 'package:random_quote/roll_quote.dart';

const startALignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class Gradient_Container extends StatelessWidget{
  const Gradient_Container(this.colors, {super.key});

  final List<Color> colors;



  @override
  Widget build(context){
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startALignment,
          end: endAlignment,
          )
      ),
      child: const Center(
        child: RollQuote(),
      ),
    );
  }
}
