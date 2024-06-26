import 'package:flutter/material.dart';

import '../res/styles/app_styles.dart';

class TextStyleFifith extends StatelessWidget {
  final String text;
  const TextStyleFifith({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      textAlign: TextAlign.start,
      style: AppStyles.headlineStyleNew
          .copyWith(color: Colors.white),
    );
  }
}
