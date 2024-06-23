import 'package:flutter/material.dart';
import 'package:ticket_app/base/bottom_navbar.dart';

void main() {
  runApp(const MyApp());
  // var test = TestClass(x: 4, y: 10);
  //
  // var newTest = test.copyWith(x: 30, y: 40);
}

// class TestClass {
//    int x;
//    int y;
//
//   TestClass({required this.x, required this.y});
//
//   TestClass copyWith({int? x, int? y}) {
//     return TestClass(x:5,y:20);
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavbar(),
    );
  }
}
