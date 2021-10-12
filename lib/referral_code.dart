// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_constructors_in_immutables, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class referralCard extends StatelessWidget {
  final double ht = 60;
  final double wdth =
      315; // this will become 315 after the elevated card height is modified.
  final Color clr = const Color(0xFFB8E9FF);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Container(
        height: ht,
        width: wdth,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: clr,
          elevation: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(width: 15),
              Text(
                'REFERRAL CODE: ABCDEFGHJI',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.brown,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
