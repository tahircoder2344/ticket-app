import 'package:flutter/material.dart';

import '../res/styles/app_styles.dart';

class TextStyleFourth extends StatelessWidget {
  final String text;
  const TextStyleFourth({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      textAlign: TextAlign.end,
      style: AppStyles.headlineStyleNew
          .copyWith(color: Colors.white),
    );
  }
}
