import 'package:flutter/material.dart';

Widget mealTimeNotApplicableContainer({required String nameOfMealTime}) {
  return Container(
    height: 125,
    width: 276,
    decoration: BoxDecoration(
      border: Border(right: BorderSide(width: 1, color: Color(0xFFEFEFF0))),
    ),
    alignment: Alignment.center,
    child: Column(
      children: [
        Container(
          height: 47,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1, color: Color(0xFFEFEFF0)),
            ),
          ),
          child: SizedBox(
            height: 17,
            width: 80,
            child: Text(
              nameOfMealTime,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "PlusJakartaSans-Regular",
                fontSize: 16,
                fontWeight: FontWeight.w500,
                height: 1.0,
                letterSpacing: 0,
                color: Color(0xFF1D1929),
              ),
            ),
          ),
        ),
        Container(
          height: 77,
          alignment: Alignment.center,
          child: SizedBox(
            height: 17,
            width: 113,
            child: Text(
              "N/A",
              textAlign: TextAlign.center,

              style: TextStyle(
                fontFamily: "PlusJakartaSans-Regular",
                fontSize: 14,
                fontWeight: FontWeight.w400,
                height: 1.0,
                letterSpacing: -0.42,
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1, color: Color(0xFFEFEFF0)),
            ),
          ),
        ),
      ],
    ),
  );
}
