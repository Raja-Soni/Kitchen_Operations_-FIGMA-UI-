import 'package:flutter/material.dart';

Widget buffetNameAndList({
  required String buffetName,
  required String buffetNameList,
}) {
  return Container(
    height: 125,
    width: 50,
    decoration: BoxDecoration(
      border: Border(
        right: BorderSide(width: 1, color: Color(0xFFEFEFF0)),
        bottom: BorderSide(width: 1, color: Color(0xFFEFEFF0)),
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 10),
        SizedBox(
          height: 24,
          width: 34,
          child: Text(
            buffetName,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "PlusJakartaSans-Regular",
              fontSize: 10,
              fontWeight: FontWeight.w500,
              height: 1.25,
              letterSpacing: -0.3,
              color: Color(0xFF1D1929),
            ),
          ),
        ),
        SizedBox(height: 6),
        SizedBox(
          height: 24,
          width: 47,
          child: Text(
            buffetNameList,
            textAlign: TextAlign.center,
            style: TextStyle(
              decoration: TextDecoration.underline,
              decorationColor: Color(0xFF00A35E),
              decorationStyle: TextDecorationStyle.solid,
              fontFamily: "PlusJakartaSans-Regular",
              fontSize: 8,
              fontWeight: FontWeight.w400,
              height: 1.25,
              letterSpacing: -0.3,
              color: Color(0xFF00A35E),
            ),
          ),
        ),
      ],
    ),
  );
}
