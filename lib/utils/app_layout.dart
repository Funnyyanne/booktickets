import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenHeight() {
    return Get.height;
  }

  static getWidth(double pixel) {
    double x = getScreenWidth() / pixel;
    return getScreenWidth() / x;
  }

  static getHeigh(double pixel) {
    double x = getScreenHeight() / pixel; //844/200 =>4.22
    return getScreenHeight()/x;
  }

  static getScreenWidth() {
    return Get.width;
  }
}
