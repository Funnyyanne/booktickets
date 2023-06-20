import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final bool? isColor;
  final int selections;
  final double width;
  const AppLayoutBuilderWidget({Key? key,this.isColor, required this.selections,this.width=3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(
      builder: (BuildContext context,
          BoxConstraints constraints) {
        print("${constraints.constrainWidth()}");
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
              (constraints.constrainWidth() / selections)
                  .floor(),
                  (index) => SizedBox(
                width: width,
                height: AppLayout.getWidth(1),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: isColor == null
                          ? Colors.white
                          : Colors.grey.shade300),
                ),
              )),
        );
      },
    );
  }
}
