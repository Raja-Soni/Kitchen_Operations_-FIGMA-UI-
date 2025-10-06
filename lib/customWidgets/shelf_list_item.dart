import 'package:flutter/material.dart';

Widget shelfListItem({
  String? itemId,
  String? itemName,
  String? itemType,
  String? preservationMethod,
  String? storageLocation,
  int? totalAvailableQty,
  int? daysLeftToShelLife,
  int? availableQty,
}) {
  return Row(
    children: [
      SizedBox(width: 12),
      Container(
        alignment: Alignment.centerLeft,
        width: 55.01,
        child: Text(
          itemId.toString(),
          style: TextStyle(
            fontFamily: "PlusJakartaSans-Regular",
            fontSize: 14,
            height: 1.0,
            fontWeight: FontWeight.w500,
            color: Color(0xFF000000),
          ),
        ),
      ),
      SizedBox(width: 52),
      Container(
        alignment: Alignment.centerLeft,
        width: 81.32,
        child: Text(
          itemName.toString().substring(0, 1).toUpperCase() +
              itemName.toString().substring(1).toLowerCase(),
          style: TextStyle(
            fontFamily: "PlusJakartaSans-Regular",
            fontSize: 14,
            height: 1.0,
            fontWeight: FontWeight.w500,
            color: Color(0xFF000000),
          ),
        ),
      ),
      SizedBox(width: 51),
      Container(
        width: 81.32,
        alignment: Alignment.centerLeft,
        child: Text(
          itemType.toString().substring(0, 1).toUpperCase() +
              itemType.toString().substring(1).toLowerCase(),
          style: TextStyle(
            fontFamily: "PlusJakartaSans-Regular",
            fontSize: 14,
            height: 1.0,
            fontWeight: FontWeight.w500,
            color: Color(0xFF000000),
          ),
        ),
      ),
      SizedBox(width: 45),
      Container(
        width: 101,
        alignment: Alignment.centerLeft,
        child: Text(
          preservationMethod.toString().substring(0, 1).toUpperCase() +
              preservationMethod.toString().substring(1).toLowerCase(),
          style: TextStyle(
            fontFamily: "PlusJakartaSans-Regular",
            fontSize: 14,
            height: 1.0,
            fontWeight: FontWeight.w500,
            color: Color(0xFF000000),
          ),
        ),
      ),
      SizedBox(width: 97),
      Container(
        width: 101,
        alignment: Alignment.centerLeft,
        child: Text(
          storageLocation.toString().substring(0, 1).toUpperCase() +
              storageLocation.toString().substring(1).toLowerCase(),
          style: TextStyle(
            fontFamily: "PlusJakartaSans-Regular",
            fontSize: 14,
            height: 1.0,
            fontWeight: FontWeight.w500,
            color: Color(0xFF000000),
          ),
        ),
      ),
      SizedBox(width: 73),
      Container(
        width: 101,
        alignment: Alignment.centerLeft,
        child: Text(
          "$totalAvailableQty kg",
          style: TextStyle(
            fontFamily: "PlusJakartaSans-Regular",
            fontSize: 14,
            height: 1.0,
            fontWeight: FontWeight.w500,
            color: Color(0xFF000000),
          ),
        ),
      ),
      SizedBox(width: 55),
      Container(
        width: 101,
        alignment: Alignment.centerLeft,
        child: Text(
          "$daysLeftToShelLife${(daysLeftToShelLife! <= 1) ? " Day" : " Days"}",
          style: TextStyle(
            fontFamily: "PlusJakartaSans-Regular",
            fontSize: 14,
            height: 1.0,
            fontWeight: FontWeight.w500,
            color: Color(0xFFF04438),
          ),
        ),
      ),
      SizedBox(width: 34),
      Container(
        width: 101,
        alignment: Alignment.centerLeft,
        child: Text(
          "$availableQty kg",
          style: TextStyle(
            fontFamily: "PlusJakartaSans-Regular",
            fontSize: 14,
            height: 1.0,
            fontWeight: FontWeight.w500,
            color: Color(0xFF000000),
          ),
        ),
      ),
      SizedBox(width: 32),
      SizedBox(
        width: 100,
        height: 32,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            backgroundColor: Color(0xFF000000),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          child: Text(
            "Set Discount Offer ",
            style: TextStyle(
              fontFamily: "PlusJakartaSans-Regular",
              fontSize: 10,
              height: 1.0,
              fontWeight: FontWeight.w600,
              letterSpacing: -0.06,
              color: Color(0xFFF6F8F9),
            ),
          ),
        ),
      ),
      SizedBox(width: 10),
      SizedBox(
        height: 32,
        width: 129,
        child: ElevatedButton(
          style: ButtonStyle(
            padding: WidgetStateProperty.all(EdgeInsets.zero),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            ),
            side: WidgetStateProperty.resolveWith<BorderSide>((states) {
              if (states.contains(WidgetState.pressed)) {
                return BorderSide(width: 1, color: Color(0xFF00A35E));
              } else {
                return BorderSide(width: 1, color: Color(0xFF000000));
              }
            }),
          ),
          onPressed: () {},
          child: Text(
            "Remove From Watchlist",
            style: TextStyle(
              fontFamily: "PlusJakartaSans-Regular",
              fontSize: 10,
              height: 1.0,
              fontWeight: FontWeight.w600,
              letterSpacing: -0.06,
              color: Color(0xFF000000),
            ),
          ),
        ),
      ),
    ],
  );
}
