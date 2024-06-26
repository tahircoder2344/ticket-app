import 'package:flutter/material.dart';

import '../res/styles/app_styles.dart';

class TextStyle6th extends StatelessWidget {
  final String text;
  const TextStyle6th({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      textAlign: TextAlign.center,
      style: AppStyles.headlineStyleNew
          .copyWith(color: Colors.white),
    );
  }
}
