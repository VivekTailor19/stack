
import 'package:flutter/material.dart';
import 'package:stack/stack_color.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/" : (context) => Stack_Colors()
      },
    ),
  );
}
