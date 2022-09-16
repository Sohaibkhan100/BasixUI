import 'package:flutter/material.dart';

Widget textWidget({
  dynamic textContent,
  double? textSize,
  String? fontFamily,
  Color? textColor,
  FontWeight? fontWeight,
}) {
  return Text(
    textContent,
    style: TextStyle(
      fontSize: textSize,
      fontFamily: 'Confortaa',
      color: textColor,
      fontWeight: fontWeight,
    ),
  );
}
