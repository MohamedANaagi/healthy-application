import 'package:bmindex/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Bmindex());
}

class Bmindex extends StatelessWidget {
  const Bmindex({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
