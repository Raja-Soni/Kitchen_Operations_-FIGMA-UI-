import 'package:flutter/material.dart';

Widget eventMealTimeNameAndPreparationAndServeTimeContainer({
  required String mealTimeName,
  required String preparationTime,
  required String eventName,
  required double eventPrepTimeContainerHeight,
  required double eventPrepTimeContainerWidth,
  required double eventServeTimeContainerHeight,
  required double eventServeTimeContainerWidth,
  required String serveTime,
}) {
  return Container(
    height: 124,
    width: 276,
    decoration: BoxDecoration(
      border: Border(
        right: BorderSide(width: 1, color: Color(0xFFEFEFF0)),
        bottom: BorderSide(width: 1, color: Color(0xFFEFEFF0)),
      ),
    ),
    child: Column(
      children: [
        // Meal Time Name
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
              mealTimeName,
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
        SizedBox(
          height: 76,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Preparation Time Column
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 17,
                    width: 113,
                    child: Text(
                      eventName,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "PlusJakartaSans-Regular",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        height: 1.0,
                        letterSpacing: -0.42,
                        color: Color(0xFF1D1929),
                      ),
                    ),
                  ),
                  SizedBox(height: 2),
                  SizedBox(
                    height: 17,
                    width: 113,
                    child: Text(
                      "Preparation Time",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "PlusJakartaSans-Regular",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        height: 1.0,
                        letterSpacing: -0.36,
                        color: Color(0xFF1D1929),
                      ),
                    ),
                  ),
                  Container(
                    height: 14,
                    width: 113,
                    alignment: Alignment.center,
                    child: Text(
                      preparationTime,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        height: 1.0,
                        letterSpacing: 0,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                  Container(
                    height: 14,
                    width: 46,
                    alignment: Alignment.center,
                    child: Text(
                      "Menu",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xFF00A35E),
                        decorationStyle: TextDecorationStyle.solid,
                        fontFamily: "Inter",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        height: 1.0,
                        letterSpacing: 0,
                        color: Color(0xFF00A35E),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 77,
                decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(width: 1, color: Color(0xFFEFEFF0)),
                  ),
                ),
              ),
              // Serve Time Column
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 17,
                    width: 113,
                    child: Text(
                      eventName,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "PlusJakartaSans-Regular",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        height: 1.0,
                        letterSpacing: -0.42,
                        color: Color(0xFF1D1929),
                      ),
                    ),
                  ),
                  SizedBox(height: 2),
                  SizedBox(
                    height: 17,
                    width: 113,
                    child: Text(
                      "Serve Time",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "PlusJakartaSans-Regular",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        height: 1.0,
                        letterSpacing: -0.36,
                        color: Color(0xFF1D1929),
                      ),
                    ),
                  ),
                  Container(
                    height: 14,
                    width: 115,
                    alignment: Alignment.center,
                    child: Text(
                      serveTime,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        height: 1.0,
                        letterSpacing: 0,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                  Container(
                    height: 14,
                    width: 90,
                    alignment: Alignment.center,
                    child: Text(
                      "Live Counter",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xFF00A35E),
                        decorationStyle: TextDecorationStyle.solid,
                        fontFamily: "Inter",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        height: 1.0,
                        letterSpacing: 0,
                        color: Color(0xFF00A35E),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
