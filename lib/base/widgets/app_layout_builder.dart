import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppLayoutBuilder extends StatelessWidget {
  final int randomDivider;
  const AppLayoutBuilder({super.key, required this.randomDivider});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (kDebugMode) {
          print("${(constraints.constrainWidth() / randomDivider).floor()}");
        }
        // Example usage of randomDivider
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(
            (constraints.constrainWidth() / randomDivider).floor(),
                (index) => const SizedBox(
              width: 3,height: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
