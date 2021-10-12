// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_constructors_in_immutables, camel_case_types

import 'package:flutter/material.dart';

class elevCard extends StatelessWidget {
  elevCard({required this.ht, required this.clr, required this.cardContent});
  final double ht;
  final double wdth = 379; // change this to 375 later.
  final Color clr;
  final Widget cardContent;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Container(
        height: ht,
        width: wdth,
        child: Card(
          child: cardContent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: clr,
          elevation: 2,
        ),
      ),
    );
  }
}
