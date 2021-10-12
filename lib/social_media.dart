// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class socialMedia extends StatelessWidget {
  socialMedia({required this.appName, required this.appIcon});
  final String appIcon;
  final String appName;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: SizedBox(
            height: 50,
            width: 50,
            child: Image.asset(appIcon),
          ),
        ),
        Text(
          appName,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.blue[700],
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(backgroundColor: Colors.blue),
          onPressed: () {},
          child: Text(
            'SHARE',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
