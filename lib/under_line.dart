// ignore_for_file: prefer_const_constructors, duplicate_ignore, camel_case_types, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class underLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Divider(
        height: 1,
        thickness: 1,
        color: Colors.grey,
        indent: 30,
        endIndent: 30,
      ),
    );
  }
}
