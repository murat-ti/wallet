import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

var number = NumberFormat("#,##0.00", "en_US");

class ApplicationColors {
  static const scaffoldBackgroundColor = Color(0xff082157);
  static const dividerColor = Color(0xff071D4A);
  static const bottomDialogBgColor = Color(0xff0D2966);
  static const thinLineColor = Color(0xffE9EAEB);
  static const textColor = Color(0xffFFFFFF);
  static const tabBarColor = Color(0xff0F66BD);
}

class ApplicationSizes {
  static const bigTextSize = 17.0;
  static const smallTextSize = 14.0;
  static const paddingVertical = 83.0;
  static const paddingHorizontal = 21.0;
  static const smallSizeRadius = 5.0;
  static const bigDividerThickness = 4.0;
}

class Currencies {
  static const title = {
    'aud': 'Australian dollar',
    'nzd': 'New Zealand Dollar',
    'sgd': 'Singapore Dollar',
  };
}
