import 'package:flutter/material.dart';
import 'package:second_task/views/home_screen.dart';

void main() {
  runApp(const SecondTask());
}

class SecondTask extends StatelessWidget {
  const SecondTask({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}