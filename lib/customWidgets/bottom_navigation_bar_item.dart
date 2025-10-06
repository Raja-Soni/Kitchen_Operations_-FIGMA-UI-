import 'package:flutter/material.dart';

BottomNavigationBarItem bottomNavigationBarItem({
  required String itemName,
  required IconData itemIcon,
}) {
  return BottomNavigationBarItem(
    icon: SizedBox(
      height: 33.25,
      width: 33.25,
      child: Icon(itemIcon, size: 22),
    ),
    label: itemName,
  );
}

Widget rowBottomNavigationBarItem({
  required bool isTapped,
  required String labelName,
  required IconData icon,
}) {
  return GestureDetector(
    child: Container(
      padding: EdgeInsets.zero,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: isTapped ? Color(0xFF1D1929) : Color(0xFF6E7C87)),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 12.0,
            ),
            child: Center(
              child: Text(
                maxLines: 1,
                labelName,
                style: TextStyle(
                  overflow: TextOverflow.visible,
                  fontFamily: "PlusJakartaSans-Regular",
                  fontSize: 13,
                  color: isTapped ? Color(0xFF1D1929) : Color(0xFF6E7C87),
                  fontWeight: isTapped ? FontWeight.w600 : FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
