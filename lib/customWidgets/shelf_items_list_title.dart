import 'package:flutter/material.dart';

Widget shelfListItemTitle() {
  return Padding(
    padding: const EdgeInsets.only(left: 12.0),
    child: SizedBox(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 62,
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              "Item ID",
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1.0,
                fontFamily: "PlusJakartaSans-Regular",
                fontSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.21,
                color: Color(0xFF1D1929),
              ),
              textHeightBehavior: TextHeightBehavior(
                applyHeightToFirstAscent: false,
                applyHeightToLastDescent: false,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Item Name",
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1.0,
                fontFamily: "PlusJakartaSans-Regular",
                fontSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.21,
                color: Color(0xFF1D1929),
              ),
              textHeightBehavior: TextHeightBehavior(
                applyHeightToFirstAscent: false,
                applyHeightToLastDescent: false,
              ),
            ),
          ),
          Container(
            width: 64,
            alignment: Alignment.center,
            child: Text(
              "Item Type",
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1.0,
                fontFamily: "PlusJakartaSans-Regular",
                fontSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.21,
                color: Color(0xFF1D1929),
              ),
              textHeightBehavior: TextHeightBehavior(
                applyHeightToFirstAscent: false,
                applyHeightToLastDescent: false,
              ),
            ),
          ),
          Container(
            width: 136,
            alignment: Alignment.center,
            child: Text(
              "Preservation Method",
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1.0,
                fontFamily: "PlusJakartaSans-Regular",
                fontSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.21,
                color: Color(0xFF1D1929),
              ),
              textHeightBehavior: TextHeightBehavior(
                applyHeightToFirstAscent: false,
                applyHeightToLastDescent: false,
              ),
            ),
          ),
          Container(
            width: 113,
            alignment: Alignment.center,
            child: Text(
              "Storage Location",
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1.0,
                fontFamily: "PlusJakartaSans-Regular",
                fontSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.21,
                color: Color(0xFF1D1929),
              ),
              textHeightBehavior: TextHeightBehavior(
                applyHeightToFirstAscent: false,
                applyHeightToLastDescent: false,
              ),
            ),
          ),
          Container(
            width: 93,
            alignment: Alignment.center,
            child: Text(
              "Total Available Quantity",
              style: TextStyle(
                fontFamily: "PlusJakartaSans-Regular",
                fontSize: 14,
                height: 1.0,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.21,
                color: Color(0xFF1D1929),
              ),
              textHeightBehavior: TextHeightBehavior(
                applyHeightToFirstAscent: false,
                applyHeightToLastDescent: false,
              ),
            ),
          ),
          Container(
            width: 72,
            alignment: Alignment.center,
            child: Text(
              "Days left To Shel Life",
              style: TextStyle(
                fontFamily: "PlusJakartaSans-Regular",
                fontSize: 14,
                height: 1.0,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.21,
                color: Color(0xFF1D1929),
              ),
              textHeightBehavior: TextHeightBehavior(
                applyHeightToFirstAscent: false,
                applyHeightToLastDescent: false,
              ),
            ),
          ),
          Container(
            width: 62,
            alignment: Alignment.center,
            child: Text(
              "Available",
              style: TextStyle(
                fontFamily: "PlusJakartaSans-Regular",
                fontSize: 14,
                height: 0.71,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.21,
                color: Color(0xFF1D1929),
              ),
              textHeightBehavior: TextHeightBehavior(
                applyHeightToFirstAscent: false,
                applyHeightToLastDescent: false,
              ),
            ),
          ),
          Container(
            width: 62,
            alignment: Alignment.center,
            child: Text(
              "Action",
              style: TextStyle(
                fontFamily: "PlusJakartaSans-Regular",
                fontSize: 14,
                height: 0.71,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.21,
                color: Color(0xFF1D1929),
              ),
              textHeightBehavior: TextHeightBehavior(
                applyHeightToFirstAscent: false,
                applyHeightToLastDescent: false,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
