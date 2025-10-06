import 'package:flutter/material.dart';

Widget chefAssignedForTimeContainer({
  required Color containerBGColor,
  required double containerHeight,
  required double containerWidth,
  required Widget child,
}) {
  return Container(
    height: containerHeight,
    width: containerWidth,
    decoration: BoxDecoration(
      color: containerBGColor,
      borderRadius: BorderRadius.circular(4.0),
    ),
    child: child,
  );
}
