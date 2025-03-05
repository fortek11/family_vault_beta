import 'package:flutter/material.dart';

class CustomGradients {
  final defaultGradient = LinearGradient(
    colors: [Color(0xffbf5ae0), Color(0xffa811da)],
    stops: [0, 1],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
