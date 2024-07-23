import 'package:flutter/material.dart';
import 'package:random_quote/gradient_container.dart';

void main(){
  runApp(
    const MaterialApp(
    home: Scaffold(
      body: Gradient_Container([Colors.deepPurple, Color.fromARGB(255, 13, 24, 145), Color.fromARGB(255, 10, 95, 170)]),
    ),
  ));
}
