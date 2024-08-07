import 'dart:ui';

import 'package:flutter/material.dart';

TextStyle mytextstyle15(
    {Color textcolor = Colors.red, FontWeight fontweight = FontWeight.normal}) {
  return TextStyle(
    fontSize: 15,
    fontWeight: fontweight,
    decoration: TextDecoration.lineThrough,
    color: textcolor,
  );
}

TextStyle mytextstyle23() {
  return TextStyle(
    color: Colors.black,
    fontSize: 23,
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.underline,
  );
}

TextStyle mytextstyle18() {
  return TextStyle(
    color: Colors.white,
    fontSize: 18,
  );
}
