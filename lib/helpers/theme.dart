import 'package:flutter/material.dart';
import 'package:medplace/helpers/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Montserrat',
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(color: kGradientThree),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    labelStyle:
        TextStyle(fontSize: 12.sp, color: kGrey, fontWeight: FontWeight.w600),
    contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
    enabledBorder: outlineInputBorder,
    focusedBorder: enabledInputBorder(),
    border: outlineInputBorder,
  );
}
