import 'package:flutter/material.dart';
import 'package:graduation/Screens/login_page.dart';

void main() {
  runApp(const project());
}

class project extends StatelessWidget {
  const project({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:login_page(),
    );
  }
}