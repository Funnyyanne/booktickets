import 'package:booktrickets/utils/app_layout.dart';
import 'package:booktrickets/utils/app_styles.dart';
import 'package:booktrickets/widgets/double_text_widget.dart';
import 'package:booktrickets/widgets/icon_text_widget.dart';
import 'package:booktrickets/widgets/ticket_tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeigh(20)),
        children: [
          Gap(AppLayout.getHeigh(40)),
          Text(
            "What are \n you looking for?",
            style: Styles.headLinesStyle1
                .copyWith(fontSize: AppLayout.getWidth(20)),
          ),
          Gap(AppLayout.getHeigh(20)),
          const AppTicketTabs(firstTab: 'AirLine tickets', secondTab: 'Hotels'),
          Gap(AppLayout.getHeigh(25)),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          Gap(AppLayout.getHeigh(20)),
          const AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          Gap(AppLayout.getHeigh(25)),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getWidth(18),
                horizontal: AppLayout.getHeigh(15)),
            decoration: BoxDecoration(
                color: const Color(0xD91130CE),
                borderRadius: BorderRadius.circular(AppLayout.getWidth(10))),
            child: Center(
              child: Text(
                'find tickets',
                style: Styles.textStyle.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Gap(AppLayout.getHeigh(40)),
          const AppDoubleTextWidget(
              bigText: 'Upcoming Flights', smallText: 'view all'),
          Gap(AppLayout.getHeigh(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeigh(435),
                width: size.width * .42,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeigh(15),
                    vertical: AppLayout.getHeigh(15)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(AppLayout.getHeigh(20)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1)
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeigh(190),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeigh(12)),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/sit.jpg"))),
                    ),
                    Gap(AppLayout.getHeigh(12)),
                    Text(
                      "20% dicount on the early booking of this flight, Don't miss.",
                      style: Styles.headLinesStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeigh(205),
                        decoration: BoxDecoration(
                            color: Color(0xFF3AB8B8),
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeigh(18))),
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeigh(15),
                            horizontal: AppLayout.getHeigh(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount \n for survey',
                              style: Styles.headLinesStyle2.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Gap(AppLayout.getHeigh(10)),
                            Text(
                              'Take the survey about our services and get discount',
                              style: Styles.headLinesStyle2.copyWith(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          right: -45,
                          top: -40,
                          child: Container(
                            padding: EdgeInsets.all(AppLayout.getHeigh(30)),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 18, color: Color(0xFF189999)),
                                color: Colors.transparent),
                          ))
                    ],
                  ),
                  Gap(AppLayout.getHeigh(15)),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeigh(210),
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeigh(15),
                        horizontal: AppLayout.getHeigh(15)),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeigh(18)),
                        color: const Color(0xFFEC6545)),
                    child: Column(
                      children: [
                        Text(
                          'Take love',
                          style: Styles.headLinesStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Gap(AppLayout.getHeigh(5)),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                  text: '😍', style: TextStyle(fontSize: 35)),
                              TextSpan(
                                  text: '🥰', style: TextStyle(fontSize: 50)),
                              TextSpan(
                                  text: '😘', style: TextStyle(fontSize: 35))
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
