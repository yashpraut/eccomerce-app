import 'package:flutter/cupertino.dart';

class ScreenUtils {
  static screenSize(BuildContext context) => MediaQuery.of(context).size;

  static screenWidth(BuildContext context) => screenSize(context).width;

  static screenHeight(BuildContext context) => screenSize(context).height;
}
