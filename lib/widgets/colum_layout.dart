import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final String firstText, secondText;
  final CrossAxisAlignment alignment;
  final bool? isColor;

  const AppColumnLayout(
      {Key? key,
      required this.firstText,
      required this.secondText,
      required this.alignment,
      required this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstText,
            style: isColor == null
                ? Styles.headLinesStyle3.copyWith(color: Colors.white)
                : Styles.headLinesStyle3),
        Gap(AppLayout.getHeigh(5)),
        Text(secondText,
            style: isColor == null
                ? Styles.headLinesStyle4.copyWith(color: Colors.white)
                : Styles.headLinesStyle4),
      ],
    );
  }
}
