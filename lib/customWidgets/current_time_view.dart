import 'package:flutter/material.dart';

List<Container> currentTimeView() {
  return List.generate(12, (index) {
    return Container(
      height: 40,
      width: 69,
      decoration: BoxDecoration(
        color: index == 0 ? Color(0xFF1D1929) : Colors.transparent,
        border: Border(right: BorderSide(width: 1, color: Color(0xFFEFEFF0))),
      ),
      child: Container(
        height: 25,
        width: 40,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            index == 0
                ? Container(
                    // height: 12,
                    // width: 40,
                    alignment: Alignment.center,
                    child: Text(
                      "06:43",
                      textAlign: TextAlign.center,
                      textHeightBehavior: TextHeightBehavior(
                        applyHeightToFirstAscent: false,
                        applyHeightToLastDescent: false,
                      ),
                      style: TextStyle(
                        fontFamily: "PlusJakartaSans-Regular",
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        height: 1.69,
                        letterSpacing: -1,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  )
                : SizedBox.shrink(),
            index == 0
                ? Container(
                    // height: 9,
                    // width: 20,
                    child: Text(
                      "AM",
                      textAlign: TextAlign.center,
                      textHeightBehavior: TextHeightBehavior(
                        applyHeightToFirstAscent: false,
                        applyHeightToLastDescent: false,
                      ),
                      style: TextStyle(
                        fontFamily: "PlusJakartaSans-Regular",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        height: 1.97,
                        letterSpacing: 0,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  )
                : SizedBox.shrink(),
          ],
        ),
      ),
    );
  });
}
