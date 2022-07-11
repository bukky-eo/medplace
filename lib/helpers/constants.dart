import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const kBackground = Color(0xffe7edee);
const kSmallText = TextStyle(fontSize: 25, color: Color(0xff33B7D4));
const kMed = Color(0xffe5003743);
const kGradientOne = Color(0xff33b7d4);
const kGradientTwo = Color(0xff2c9cb5);
const kGradientThree = Color(0xff217486);

const kGreyText = TextStyle(color: Color(0xff89A3A9));
const kGrey = Color(0xff89A3A9);
const kSign = TextStyle(fontSize: 15, color: kGradientOne);
const kInner = Color(0xffF0F7F9);
final textFieldDecoration = InputDecoration(
  labelStyle: const TextStyle(
    color: kGrey,
  ),
  hintStyle: const TextStyle(
    color: kGradientThree,
  ),
  // floatingLabelBehavior: FloatingLabelAlignment.,
  floatingLabelStyle: const TextStyle(
    color: kGrey,
  ),
  contentPadding: EdgeInsets.symmetric(vertical: 15.h),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: enabledInputBorder(),
);

OutlineInputBorder enabledInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(6),
    borderSide: const BorderSide(color: kGrey),
  );
}

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(6),
    borderSide: const BorderSide(color: kGradientThree),
  );
}

const OutlineInputBorder koutlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(50)),
    borderSide:
        BorderSide(color: Colors.grey, width: 1, style: BorderStyle.solid));
