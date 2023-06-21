import 'package:booktrickets/utils/app_layout.dart';
import 'package:booktrickets/utils/app_styles.dart';
import 'package:booktrickets/widgets/colum_layout.dart';
import 'package:booktrickets/widgets/layout_builder_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_utils/src/platform/platform.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeigh(20),
            vertical: AppLayout.getHeigh(20)),
        children: [
          Gap(AppLayout.getHeigh(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeigh(86),
                width: AppLayout.getWidth(86),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppLayout.getHeigh(10)),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/img_1.png"))),
              ),
              Gap(AppLayout.getHeigh(GetPlatform.isAndroid == true ? 15 : 40)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Book Tickets",
                    style: Styles.headLinesStyle1,
                  ),
                  Gap(AppLayout.getHeigh(2)),
                  Text(
                    "New-York",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                  ),
                  Gap(AppLayout.getHeigh(8)),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeigh(100)),
                        color: const Color(0xFFFEF4F3)),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeigh(3),
                        vertical: AppLayout.getHeigh(3)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFF526799)),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(AppLayout.getHeigh(5)),
                        Text(
                          "Premium status",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF526799)),
                        ),
                        Gap(AppLayout.getHeigh(5)),
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      print("trapped");
                    },
                    child: Text(
                      "Edit",
                      style: Styles.textStyle.copyWith(
                          color: Styles.primaryColor,
                          fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeigh(8)),
          Divider(
            color: Colors.grey.shade300,
          ),
          Gap(AppLayout.getHeigh(8)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeigh(90),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Styles.primaryColor,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeigh(18))),
              ),
              Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: EdgeInsets.all(AppLayout.getHeigh(30)),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 18, color: const Color(0xFF264CD2))),
                  )),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeigh(25),
                    vertical: AppLayout.getHeigh(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: 27,
                      ),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    Gap(AppLayout.getHeigh(18)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You\'v got a new award",
                          style: Styles.headLinesStyle2.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          "You have 95 flights in a year",
                          style: Styles.headLinesStyle2.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 16),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeigh(25)),
          Text(
            "Accmulated miles",
            style: Styles.headLinesStyle2,
          ),
          Gap(AppLayout.getHeigh(20)),
          Container(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getWidth(18)),
                  color: Styles.bgColor,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 1,
                        spreadRadius: 1)
                  ]),
              child: Column(
                children: [
                  Gap(AppLayout.getHeigh(15)),
                  Text(
                    "192802",
                    style: TextStyle(
                        fontSize: 45,
                        color: Styles.textColor,
                        fontWeight: FontWeight.w600),
                  ),
                  Gap(AppLayout.getHeigh(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Miles accrued",
                        style: Styles.headLinesStyle4.copyWith(fontSize: 16),
                      ),
                      Text(
                        "21 June 2023",
                        style: Styles.headLinesStyle4.copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeigh(4)),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  Gap(AppLayout.getHeigh(4)),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                          firstText: "23 042",
                          secondText: "Miles",
                          alignment: CrossAxisAlignment.start,
                          isColor: false),
                      AppColumnLayout(
                          firstText: "Airline Co",
                          secondText: "Received from",
                          alignment: CrossAxisAlignment.end,
                          isColor: false),
                    ],
                  ),
                  Gap(AppLayout.getHeigh(12)),
                  const AppLayoutBuilderWidget(
                    selections: 12,
                    isColor: false,
                  ),
                  Gap(AppLayout.getHeigh(12)),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                          firstText: "24",
                          secondText: "Miles",
                          alignment: CrossAxisAlignment.start,
                          isColor: false),
                      AppColumnLayout(
                          firstText: "McDonal\'s",
                          secondText: "Received from",
                          alignment: CrossAxisAlignment.end,
                          isColor: false),
                    ],
                  ),
                  Gap(AppLayout.getHeigh(12)),
                  const AppLayoutBuilderWidget(
                    selections: 12,
                    isColor: false,
                  ),
                  Gap(AppLayout.getHeigh(12)),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                          firstText: "52 340",
                          secondText: "Miles",
                          alignment: CrossAxisAlignment.start,
                          isColor: false),
                      AppColumnLayout(
                          firstText: "Exuma",
                          secondText: "Received from",
                          alignment: CrossAxisAlignment.end,
                          isColor: false),
                    ],
                  ),
                ],
              )),
          Gap(AppLayout.getHeigh(25)),
          InkWell(
            onTap: ()=>print("on Tapped"),
            child: Center(
              child: Text("How to get miles",
                  style: Styles.textStyle.copyWith(
                      color: Styles.primaryColor, fontWeight: FontWeight.w500)),
            ),
          )
        ],
      ),
    );
  }
}
