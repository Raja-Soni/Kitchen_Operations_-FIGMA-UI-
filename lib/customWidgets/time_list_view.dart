import "package:flutter/material.dart";

List<Container> timeListView() {
  return List.generate(17, (index) {
    final amTime = index + 6;
    return Container(
      alignment: Alignment.center,
      child: Row(
        children: [
          Text(
            amTime < 13 ? amTime.toString() : (amTime - 12).toString(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "PlusJakartaSans-Regular",
              fontSize: 16,
              letterSpacing: -1,
              height: 1.48,
              fontWeight: FontWeight.w600,
              color: Color(0xFF1D1929),
            ),
          ),
          Text(
            amTime > 11 ? " pm" : " am",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "PlusJakartaSans-Regular",
              fontSize: 16,
              letterSpacing: -1,
              height: 1.48,
              fontWeight: FontWeight.w400,
              color: Color(0xFF1D1929),
            ),
          ),
        ],
      ),
    );
  });
}
