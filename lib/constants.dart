import 'package:flutter/material.dart';

const kMainBlueColor = Color(0xFF03223f);
const kMainLightBlueColor = Color(0xFF01b4e4);
const kDefaultTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 16.0,
);
const kLoginInputDecoration = InputDecoration(
  floatingLabelBehavior: FloatingLabelBehavior.always,
  contentPadding: EdgeInsets.symmetric(
    horizontal: 16.0,
    vertical: 12.0,
  ),
  // isCollapsed: true,
  isDense: true,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Color(0xFFced4da),
      width: 0.5,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: kMainLightBlueColor,
    ),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.red,
    ),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.red,
    ),
  ),
);
