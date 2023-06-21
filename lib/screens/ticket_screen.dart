import 'package:booktrickets/screens/ticket_view.dart';
import 'package:booktrickets/utils/app_info.dart';
import 'package:booktrickets/utils/app_layout.dart';
import 'package:booktrickets/utils/app_styles.dart';
import 'package:booktrickets/widgets/colum_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/layout_builder_widget.dart';
import '../widgets/ticket_tabs.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeigh(20),
                vertical: AppLayout.getHeigh(20)),
            children: [
              Gap(AppLayout.getHeigh(40)),
              Text(
                'Ticket',
                style: Styles.headLinesStyle1,
              ),
              Gap(AppLayout.getHeigh(20)),
              const AppTicketTabs(firstTab: 'Upcoming', secondTab: 'Previous'),
              Gap(AppLayout.getHeigh(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeigh(15)),
                child: TicketView(ticket: ticketList[0], isColor: true),
              ),
              SizedBox(
                height: 1,
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeigh(15),
                    vertical: AppLayout.getHeigh(15)),
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: 'Flutter DB',
                          secondText: 'Passenger',
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        AppColumnLayout(
                          firstText: '5221 478566',
                          secondText: 'Passport',
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        )
                      ],
                    ),
                    Gap(AppLayout.getHeigh(20)),
                    const AppLayoutBuilderWidget(
                      selections: 15,
                      isColor: false,
                      width: 5,
                    ),
                    Gap(AppLayout.getHeigh(20)),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: '0055 444 77147',
                          secondText: 'NUmber of E ticket',
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        AppColumnLayout(
                          firstText: 'B2SG28',
                          secondText: 'Booking code',
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        )
                      ],
                    ),
                    Gap(AppLayout.getHeigh(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/visa.png",
                                  scale: 11,
                                ),
                                Text(
                                  '*** 33323',
                                  style: Styles.headLinesStyle3,
                                )
                              ],
                            ),
                            Gap(5),
                            Text('Payment method',
                                style: Styles.headLinesStyle4)
                          ],
                        ),
                        const AppColumnLayout(
                          firstText: '\$299.88',
                          secondText: 'Price',
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    Gap(AppLayout.getHeigh(20)),
                  ],
                ),
              ),
              /*
              bar code
               */
              const SizedBox(height: 1,),
              Container(

                decoration:  BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(AppLayout.getHeigh(21)),
                    bottomLeft:  Radius.circular(AppLayout.getHeigh(21))),
                  ),
                margin:  EdgeInsets.only(left:AppLayout.getHeigh(15),right: AppLayout.getHeigh(15)),
                padding:  EdgeInsets.only(top:AppLayout.getHeigh(20),bottom: AppLayout.getHeigh(20),),

                child: Container(
                  padding:  EdgeInsets.symmetric(horizontal: AppLayout.getHeigh(15)),
                  child: ClipRRect(
                    borderRadius:BorderRadius.circular(AppLayout.getHeigh(15)),
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: 'https://github.com/Funnyyanne',
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
              Gap(AppLayout.getHeigh(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeigh(15)),
                child: TicketView(ticket: ticketList[0]),
              )
            ],
          ),
          Positioned(
            left: AppLayout.getHeigh(22),
            top:  AppLayout.getHeigh(295),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor,width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeigh(22),
            top:  AppLayout.getHeigh(295),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor,width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          )

        ],
      ),
    );
  }
}
