import 'package:flutter/cupertino.dart';

Widget topBarTabItem({
  required String tabName,
  VoidCallback? onTap,
  bool? tapped,
}) {
  bool isTapped = tapped ?? false;
  return Container(
    decoration: BoxDecoration(
      color: isTapped ? Color(0xFF1D1929) : Color(0xFFF7F7F8),
      border: Border.all(width: 1, color: Color(0xFFD0D5DD)),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        alignment: Alignment.center,
        child: Text(
          tabName,
          style: TextStyle(
            fontFamily: "PlusJakartaSans-Regular",
            fontSize: 16,
            height: 1.58,
            letterSpacing: 0.0,
            color: isTapped ? Color(0xFFFFFFFF) : Color(0xFF000000),
            fontWeight: isTapped ? FontWeight.w500 : FontWeight.w400,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}
