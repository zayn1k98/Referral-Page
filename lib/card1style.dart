// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class card1Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Text(
        'How does it work?',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 20,
          color: Colors.blue[900],
        ),
      ),
    );
  }
}

class card1BodyStyle extends StatelessWidget {
  card1BodyStyle({required this.bodyText, required this.card1Icon});
  final String card1Icon;
  final String bodyText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          width: 50,
          child: Image.asset(card1Icon),
        ),
        Text(
          bodyText,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blue[700],
          ),
        ),
      ],
    );
  }
}

class card1Footer extends StatelessWidget {
  final Image coins = Image.asset('icons/coins.png');
  final Image cash = Image.asset('icons/cash.png');
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Text(
            'Earn upto',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.blue[900],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: SizedBox(
              height: 20,
              width: 20,
              child: Image.asset('icons/coins.png'),
            ),
          ),
          Text(
            '500 and',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.blue[900],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: SizedBox(
              height: 25,
              width: 25,
              child: Image.asset('icons/cash.png'),
            ),
          ),
          Text(
            '5000 for each referral',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.blue[900],
            ),
          ),
        ],
      ),
    );
  }
}
