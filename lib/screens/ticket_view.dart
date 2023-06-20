import 'package:booktrickets/utils/app_layout.dart';
import 'package:booktrickets/utils/app_styles.dart';
import 'package:booktrickets/widgets/colum_layout.dart';
import 'package:booktrickets/widgets/layout_builder_widget.dart';
import 'package:booktrickets/widgets/tickets_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_utils/get_utils.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;

  const TicketView({Key? key, required this.ticket, this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: AppLayout.getHeigh(GetPlatform.isAndroid== true?184 :169),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeigh(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /*showing blue*/
            Container(
              decoration: BoxDecoration(
                  color:
                      isColor == null ? const Color(0xFF526799) : Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppLayout.getHeigh(21)),
                      topRight: Radius.circular(AppLayout.getHeigh(21)))),
              padding: EdgeInsets.all(AppLayout.getHeigh(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'],
                          style: isColor == null
                              ? Styles.headLinesStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headLinesStyle3),
                      Expanded(child: Container()),
                      TicketContainer(isColor: isColor),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                            height: AppLayout.getHeigh(24),
                            child:const AppLayoutBuilderWidget(selections: 6),
                          ),
                          Center(
                              child: Transform.rotate(
                            angle: 1.5,
                            child: Icon(
                              Icons.local_airport_rounded,
                              color: isColor == null
                                  ? Colors.white
                                  : Color(0xFF8ACCF7),
                            ),
                          )),
                        ],
                      )),
                      TicketContainer(isColor: isColor),
                      Expanded(child: Container()),
                      Text(ticket['to']['code'],
                          style: isColor == null
                              ? Styles.headLinesStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headLinesStyle3),
                    ],
                  ),
                  Gap(AppLayout.getHeigh(3)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(ticket['from']['name'],
                            style: isColor == null
                                ? Styles.headLinesStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLinesStyle4),
                      ),
                      Text(ticket['flying_time'],
                          style: isColor == null
                              ? Styles.headLinesStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headLinesStyle3),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(ticket['to']['name'],
                            textAlign: TextAlign.end,
                            style: isColor == null
                                ? Styles.headLinesStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLinesStyle4),
                      ),
                    ],
                  )
                ],
              ),
            ),
            /*showing orange*/
            Container(
              color: isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeigh(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: isColor == null
                              ? Colors.grey.shade300
                              : Colors.white,
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: LayoutBuilder(builder:
                        (BuildContext context, BoxConstraints constraints) {
                      return Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(
                            (constraints.constrainWidth() / 15).floor(),
                            (index) => SizedBox(
                                  width: AppLayout.getWidth(5),
                                  height: AppLayout.getHeigh(1),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: isColor == null
                                            ? Colors.white
                                            : Colors.grey.shade300),
                                  ),
                                )),
                      );
                    }),
                  )),
                  SizedBox(
                    height: AppLayout.getHeigh(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: isColor == null
                              ? Colors.grey.shade200
                              : Colors.white,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10))),
                    ),
                  )
                ],
              ),
            ),
            /*bottom  orange part */
            Container(
              decoration: BoxDecoration(
                  color: isColor == null ? Styles.orangeColor : Colors.white,
                  borderRadius:  BorderRadius.only(
                      bottomLeft: Radius.circular(isColor==null?21:0),
                      bottomRight: Radius.circular(isColor==null?21:0))),
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppColumnLayout(firstText: ticket['date'], secondText: "DATE", alignment: MainAxisAlignment.start, isColor: isColor),
                  AppColumnLayout(firstText: ticket['departure_time'], secondText: "Departure time", alignment: MainAxisAlignment.center, isColor: isColor),
                  AppColumnLayout(firstText: ticket['number'].toString(), secondText: "Number", alignment: MainAxisAlignment.end, isColor: isColor),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
