import 'package:booktrickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key,required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Hotel price is ${hotel['price']}");
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: AppLayout.getHeigh(350),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200, blurRadius: 20, spreadRadius: 5)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeigh(180),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Styles.primaryColor,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/${hotel['image']}"))),
          ),
           Gap(AppLayout.getHeigh(10)),
          Text("${hotel['place']}",
              style: Styles.headLinesStyle2.copyWith(color: Styles.kakiColor)),
           Gap(AppLayout.getHeigh(5)),
          Text("${hotel['destination']}",
              style: Styles.headLinesStyle3.copyWith(color: Colors.white)),
           Gap(AppLayout.getHeigh(8)),
          Text("\$${hotel['price']}/night",
              style: Styles.headLinesStyle1.copyWith(color: Styles.kakiColor))
        ],
      ),
    );
  }
}
