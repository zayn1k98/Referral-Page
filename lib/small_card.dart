// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_constructors_in_immutables, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class smallCard extends StatelessWidget {
  final double ht = 55;
  final double wdth = 200;
  final Color clr = const Color(0xFFB8E9FF);
  final Image youtubeIcon = Image.asset('icons/youtube.png');
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
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                height: 28,
                width: 28,
                child: youtubeIcon,
              ),
              SizedBox(width: 15),
              Text(
                'How to earn?',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  color: Colors.blue[900],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
