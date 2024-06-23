import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
  body: ListView(
    children:  [
      Container(child: const Text("Hello this is home screen"),)
    ],
  ),
    );
  }
}
