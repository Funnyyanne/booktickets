import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String bigText ,smallText;
  const AppDoubleTextWidget({Key? key,required this.bigText,required this.smallText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: Styles.headLinesStyle2),
        InkWell(
            onTap: () {
              print('you are trapped');
            },
            child: Text(smallText,
                style: Styles.textStyle
                    .copyWith(color: Styles.primaryColor)))
      ],
    );
  }
}
