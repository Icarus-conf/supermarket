import 'package:flutter/material.dart';

class AppColors {
  static const primaryColor = Color(0xFF397d78);
  static const secondaryColor = Color.fromARGB(255, 203, 232, 213);

  static LinearGradient gradColor = LinearGradient(
    colors: [
      const Color(0xFF757F9A).withOpacity(0.2),
      const Color(0xffD7DDE8).withOpacity(0.3),
    ],
    stops: const [0.3, 1],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
