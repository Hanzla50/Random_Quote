import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class RollQuote extends StatefulWidget {
  const RollQuote({super.key});
  @override
  State<RollQuote> createState() {
    return _RollQuoteState();
  }
}

class _RollQuoteState extends State<RollQuote> {
  final List<String> quotes = [
    //"Press the button to get motivational Quote",
    "The best way to predict the future is to invent it.",
    "Life is 10% what happens to us and 90% how we react to it.",
    "The only way to do great work is to love what you do.",
    "Believe you can and you're halfway there.",
    "Your time is limited, so don't waste it living someone else's life.",
    "Its not over untill I win.",
    "Its time to change tha game.",
  ];

  var activeQuote = "Press the button to get motivational Quote";

  void randomQuote() {
    setState(() {
      activeQuote = quotes[randomizer.nextInt(quotes.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              activeQuote,
              style: const TextStyle(fontSize: 24, fontStyle: FontStyle.italic, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 28),
          TextButton(
              onPressed: randomQuote,
              style: TextButton.styleFrom(foregroundColor: Colors.white),
              child: const Text(
                'Random Quote',
                style: TextStyle(fontSize: 28),
              ))
        ],
      ),
    );
  }
}
