import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/screens/all_tickets.dart';

class AppReusables extends StatelessWidget {
  const AppReusables(
      {super.key, required this.bigText, required this.smallText});
  final String bigText;
  final String smallText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText,style: AppStyles.headlineStyleThree,),
        InkWell(
            onTap: (){
              Navigator. push<void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const AllTickets(),
                ),
              );
            },
          child: Text(smallText,style: AppStyles.textStyle.copyWith(
            color:AppStyles.primaryColor
          ),
          ),

        )
      ],
    );
  }
}
