import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Center(
              child: Text(
        'Welcome To home Screen',
        style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold,color: Colors.black),
      ))),
    );
  }
}
