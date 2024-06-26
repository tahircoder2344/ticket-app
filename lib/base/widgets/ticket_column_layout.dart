import 'package:flutter/cupertino.dart';
import 'package:ticket_app/base/widgets/text_style_fifith.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class TicketColumnLayout extends StatelessWidget {
  final String ticketText;
  final String bottomText;
  final CrossAxisAlignment alignment;
  const TicketColumnLayout({super.key, required this.ticketText, required this.bottomText, required this.alignment});

  @override
  Widget build(BuildContext context) {
    return   Column(
      crossAxisAlignment: alignment,
      children: [
        TextStyleThird(text: ticketText),
        const SizedBox(height: 5,),
        TextStyleFifith(text: bottomText)
      ],
    );
  }
}
