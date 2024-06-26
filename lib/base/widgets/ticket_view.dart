import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_layout_builder.dart';
import 'package:ticket_app/base/widgets/plane_dot.dart';
import 'package:ticket_app/base/widgets/side_semi_circle.dart';
import 'package:ticket_app/base/widgets/text_style_fifith.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';
import 'package:ticket_app/base/widgets/ticket_column_layout.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 199,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            //blue part of tickets
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  //Departure and destination with icons
                  Row(
                    children: [
                      const TextStyleThird(text: 'NYC',),
                      Expanded(child: Container()),
                      const PlaneDot(),
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                            height: 24,
                            child: AppLayoutBuilder(
                              randomDivider: 6,
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                                angle: 1.57,
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                )),
                          )
                        ],
                      )),
                      const PlaneDot(),
                      Expanded(child: Container()),
                      const TextStyleThird(text: 'LDN',),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  //Departure and time with name
                  Row(
                    children: [
                      const SizedBox(
                        width: 100,
                        child: TextStyleFifith(text: 'New York',),
                      ),
                      Expanded(child: Container()),
                      const TextStyleFourth(text: '8H 30M',),
                      Expanded(child: Container()),
                      const SizedBox(
                        width: 100,
                        child:TextStyleFourth(text: "London",)
                      )
                    ],
                  ),
                ],
              ),
            ),
            //circles, dots and airplane
            Container(
              color: AppStyles.ticketRed,
              child:  const Row(
                children: [
                  SideSemiCircle( isRight: false,),
                  Expanded(child: AppLayoutBuilder(randomDivider: 16,width: 6,)),
                  SideSemiCircle(isRight: true,),
                ],
              ),
            ),
            //orange part of tickets
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketRed,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
              child: const Column(
                children: [
                  //Departure and destination with icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TicketColumnLayout(ticketText: "1 May", bottomText: 'Date', alignment: CrossAxisAlignment.start,),
                      TicketColumnLayout(ticketText: "08:00 AM", bottomText: 'Departure Time', alignment: CrossAxisAlignment.center,),
                      TicketColumnLayout(ticketText: "23", bottomText: 'Number', alignment: CrossAxisAlignment.end,),
                    ],
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
