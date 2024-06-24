import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_layout_builder.dart';
import 'package:ticket_app/base/widgets/plane_dot.dart';
import 'package:ticket_app/base/widgets/side_semi_circle.dart';

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
                      Text(
                        "NYC",
                        style: AppStyles.headlineStyleThree
                            .copyWith(color: Colors.white),
                      ),
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
                      Text(
                        "LDN",
                        style: AppStyles.headlineStyleThree
                            .copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  //Departure and time with name
                  Row(
                    children: [
                      Text(
                        "New York",
                        style: AppStyles.headlineStyleTwo
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "8H 30M",
                        style: AppStyles.headlineStyleTwo
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "London",
                        style: AppStyles.headlineStyleTwo
                            .copyWith(color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: AppStyles.ticketRed,
              child:  Row(
                children: [
                  const SideSemiCircle( isRight: false,),
                  Expanded(child: Container()),
                  const SideSemiCircle(isRight: true,),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketRed,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  //Departure and destination with icons
                  Row(
                    children: [
                      Text(
                        "NYC",
                        style: AppStyles.headlineStyleThree
                            .copyWith(color: Colors.white),
                      ),
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
                      Text(
                        "LDN",
                        style: AppStyles.headlineStyleThree
                            .copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  //Departure and time with name
                  Row(
                    children: [
                      Text(
                        "New York",
                        style: AppStyles.headlineStyleTwo
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "8H 30M",
                        style: AppStyles.headlineStyleTwo
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "London",
                        style: AppStyles.headlineStyleTwo
                            .copyWith(color: Colors.white),
                      )
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
