import 'package:flutter/material.dart';

import '../customWidgets/import_all_custom_widgets.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});
  @override
  State<StatefulWidget> createState() => SchedulePageState();
}

class SchedulePageState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        body: SizedBox(
          height: 990,
          width: 918,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Container(
                  width: 918,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1, color: Color(0xFFEFEFF0)),
                    ),
                  ),
                ),
                // Time List View Container
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 49.0),
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(width: 1, color: Color(0xFFEFEFF0)),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 8.0,
                          top: 8.0,
                          bottom: 8.0,
                        ),
                        child: Row(spacing: 16, children: timeListView()),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 49.0),
                  width: 868,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1, color: Color(0xFFEFEFF0)),
                    ),
                  ),
                ),
                // Current Time View Container
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 49.0),
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(width: 1, color: Color(0xFFEFEFF0)),
                        ),
                      ),
                      width: 838,
                      child: Row(children: currentTimeView()),
                    ),
                  ],
                ),
                Container(
                  width: 917,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1, color: Color(0xFFEFEFF0)),
                    ),
                  ),
                ),
                // Guest Buffet Details Row
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Guest Buffet (Guest List Container)
                    buffetNameAndList(
                      buffetName: "Guest Buffet",
                      buffetNameList: "Guest List",
                    ),
                    // Break Fast Container
                    mealTimeNameAndPreparationAndServeTimeContainer(
                      mealTimeName: "Break Fast",
                      preparationTime: "6:00 AM - 8:30 AM",
                      prepTimeContainerHeight: 14.0,
                      prepTimeContainerWidth: 105.0,
                      serveTime: "8:30 AM - 11:00 AM",
                      serveTimeContainerHeight: 14.0,
                      serveTimeContainerWidth: 105.0,
                    ),
                    // Lunch Container
                    mealTimeNameAndPreparationAndServeTimeContainer(
                      mealTimeName: "Lunch",
                      preparationTime: "11:00 AM - 12:30 PM",
                      prepTimeContainerHeight: 14.0,
                      prepTimeContainerWidth: 113.0,
                      serveTime: "12:30 PM - 03:00 PM",
                      serveTimeContainerHeight: 14.0,
                      serveTimeContainerWidth: 113.0,
                    ),
                    // Dinner Container
                    mealTimeNameAndPreparationAndServeTimeContainer(
                      mealTimeName: "Dinner",
                      preparationTime: "05:00 PM - 07:30 PM",
                      prepTimeContainerHeight: 14.0,
                      prepTimeContainerWidth: 113.0,
                      serveTime: "07:30 AM - 10:00 AM",
                      serveTimeContainerHeight: 14.0,
                      serveTimeContainerWidth: 115.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 124),
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1,
                            color: Color(0xFFEFEFF0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // Event Buffet Details Row
                Row(
                  children: [
                    // Event Buffet (Details)
                    buffetNameAndList(
                      buffetName: "Event Buffet",
                      buffetNameList: "Details",
                    ),
                    // Break Fast (N/A)
                    mealTimeNotApplicableContainer(
                      nameOfMealTime: "Break Fast",
                    ),
                    eventMealTimeNameAndPreparationAndServeTimeContainer(
                      mealTimeName: "Lunch",
                      eventName: "Event Name 1",
                      preparationTime: "10:00 AM - 12:00 PM",
                      eventPrepTimeContainerHeight: 14.0,
                      eventPrepTimeContainerWidth: 113.0,
                      serveTime: "12:00 PM - 2:30 PM",
                      eventServeTimeContainerHeight: 14,
                      eventServeTimeContainerWidth: 115.0,
                    ),
                    eventMealTimeNameAndPreparationAndServeTimeContainer(
                      mealTimeName: "Dinner",
                      eventName: "Event Name 2",
                      preparationTime: "5:00 PM - 7:00 PM",
                      eventPrepTimeContainerHeight: 14.0,
                      eventPrepTimeContainerWidth: 113.0,
                      serveTime: "7:00 PM - 9:30 PM",
                      eventServeTimeContainerHeight: 14,
                      eventServeTimeContainerWidth: 115.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 123),
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1,
                            color: Color(0xFFEFEFF0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // Work time Shift Assigned to chef
                Row(
                  children: [
                    Container(
                      height: 306,
                      width: 830,
                      margin: EdgeInsets.only(left: 49),
                      padding: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(width: 1, color: Color(0xFFEFEFF0)),
                        ),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          spacing: 10,
                          children: [
                            // Shift Assigned to chef First Row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                chefAssignedForTimeContainer(
                                  containerHeight: 41,
                                  containerWidth: 377,
                                  containerBGColor: Color.fromRGBO(
                                    133,
                                    211,
                                    178,
                                    0.3,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Row(
                                      children: [
                                        Text(
                                          "3:45/8hour",
                                          style: TextStyle(
                                            color: Color(0xFF00A35E),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                "PlusJakartaSans-Regular",
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          "Rajeev Singh ",
                                          style: TextStyle(
                                            color: Color(0xFF00A35E),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                "PlusJakartaSans-Regular",
                                          ),
                                        ),
                                        SizedBox(width: 2),
                                        Container(
                                          height: 25,
                                          width: 1,
                                          color: Color.fromRGBO(
                                            17,
                                            164,
                                            102,
                                            1,
                                          ),
                                        ),
                                        SizedBox(width: 6),
                                        Text(
                                          "Head Chef",
                                          style: TextStyle(
                                            color: Color(0xFF00A35E),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                "PlusJakartaSans-Regular",
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                      ],
                                    ),
                                  ),
                                ),
                                chefAssignedForTimeContainer(
                                  containerHeight: 41,
                                  containerWidth: 377,
                                  containerBGColor: Color.fromRGBO(
                                    133,
                                    211,
                                    178,
                                    0.3,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Row(
                                      children: [
                                        Text(
                                          "3:45/8hour",
                                          style: TextStyle(
                                            color: Color(0xFF00A35E),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                "PlusJakartaSans-Regular",
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          "Rajeev Singh ",
                                          style: TextStyle(
                                            color: Color(0xFF00A35E),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                "PlusJakartaSans-Regular",
                                          ),
                                        ),
                                        SizedBox(width: 2),
                                        Container(
                                          height: 25,
                                          width: 1,
                                          color: Color.fromRGBO(
                                            17,
                                            164,
                                            102,
                                            1,
                                          ),
                                        ),
                                        SizedBox(width: 6),
                                        Text(
                                          "Head Chef",
                                          style: TextStyle(
                                            color: Color(0xFF00A35E),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                "PlusJakartaSans-Regular",
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Shift Assigned to chef 2nd Row
                            Row(
                              children: [
                                chefAssignedForTimeContainer(
                                  containerHeight: 41,
                                  containerWidth: 589,
                                  containerBGColor: Color.fromRGBO(
                                    202,
                                    186,
                                    47,
                                    0.1,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Row(
                                      children: [
                                        SizedBox(width: 2),
                                        Text(
                                          "3:45/8hour",
                                          style: TextStyle(
                                            color: Color(0xFFCDBB21),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                "PlusJakartaSans-Regular",
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          "Rajeev Singh ",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                "PlusJakartaSans-Regular",
                                            color: Color(0xFFCDBB21),
                                          ),
                                        ),
                                        SizedBox(width: 70),
                                        Container(
                                          height: 25,
                                          width: 1,
                                          color: Color(0xFFCDBB21),
                                        ),
                                        SizedBox(width: 40),
                                        Text(
                                          "Head Chef",
                                          style: TextStyle(
                                            color: Color(0xFFCDBB21),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                "PlusJakartaSans-Regular",
                                          ),
                                        ),
                                        SizedBox(width: 40),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Shift Assigned to chef 3rd Row
                            Row(
                              children: [
                                SizedBox(width: 250),
                                chefAssignedForTimeContainer(
                                  containerHeight: 41,
                                  containerWidth: 485,
                                  containerBGColor: Color.fromRGBO(
                                    133,
                                    211,
                                    178,
                                    0.3,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Row(
                                      children: [
                                        SizedBox(width: 20),
                                        Text(
                                          "3:45/8hour",
                                          style: TextStyle(
                                            color: Color(0xFF00A35E),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                "PlusJakartaSans-Regular",
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          "Rajeev Singh ",
                                          style: TextStyle(
                                            color: Color(0xFF00A35E),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                "PlusJakartaSans-Regular",
                                          ),
                                        ),
                                        SizedBox(width: 40),
                                        Container(
                                          height: 25,
                                          width: 1,
                                          color: Color.fromRGBO(
                                            17,
                                            164,
                                            102,
                                            1,
                                          ),
                                        ),
                                        SizedBox(width: 20),
                                        Text(
                                          "Head Chef",
                                          style: TextStyle(
                                            color: Color(0xFF00A35E),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                "PlusJakartaSans-Regular",
                                          ),
                                        ),
                                        SizedBox(width: 20),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Shift Assigned to chef 4th Row
                            Row(
                              children: [
                                SizedBox(width: 150),
                                chefAssignedForTimeContainer(
                                  containerHeight: 41,
                                  containerWidth: 660,
                                  containerBGColor: Color.fromRGBO(
                                    133,
                                    211,
                                    178,
                                    0.3,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Row(
                                      children: [
                                        SizedBox(width: 20),
                                        Text(
                                          "3:45/8hour",
                                          style: TextStyle(
                                            color: Color(0xFF00A35E),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                "PlusJakartaSans-Regular",
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          "Rajeev Singh ",
                                          style: TextStyle(
                                            color: Color(0xFF00A35E),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                "PlusJakartaSans-Regular",
                                          ),
                                        ),
                                        SizedBox(width: 80),
                                        Container(
                                          height: 25,
                                          width: 1,
                                          color: Color.fromRGBO(
                                            17,
                                            164,
                                            102,
                                            1,
                                          ),
                                        ),
                                        SizedBox(width: 40),
                                        Text(
                                          "Head Chef",
                                          style: TextStyle(
                                            color: Color(0xFF00A35E),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                "PlusJakartaSans-Regular",
                                          ),
                                        ),
                                        SizedBox(width: 50),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Shift Assigned to chef 5th Row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                chefAssignedForTimeContainer(
                                  containerHeight: 41,
                                  containerWidth: 377,
                                  containerBGColor: Color.fromRGBO(
                                    133,
                                    211,
                                    178,
                                    0.3,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Row(
                                      children: [
                                        Text(
                                          "3:45/8hour",
                                          style: TextStyle(
                                            color: Color(0xFF00A35E),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                "PlusJakartaSans-Regular",
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          "Rajeev Singh ",
                                          style: TextStyle(
                                            color: Color(0xFF00A35E),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                "PlusJakartaSans-Regular",
                                          ),
                                        ),
                                        SizedBox(width: 2),
                                        Container(
                                          height: 25,
                                          width: 1,
                                          color: Color.fromRGBO(
                                            17,
                                            164,
                                            102,
                                            1,
                                          ),
                                        ),
                                        SizedBox(width: 6),
                                        Text(
                                          "Head Chef",
                                          style: TextStyle(
                                            color: Color(0xFF00A35E),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                "PlusJakartaSans-Regular",
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                      ],
                                    ),
                                  ),
                                ),
                                chefAssignedForTimeContainer(
                                  containerHeight: 41,
                                  containerWidth: 377,
                                  containerBGColor: Color.fromRGBO(
                                    133,
                                    211,
                                    178,
                                    0.3,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Row(
                                      children: [
                                        Text(
                                          "3:45/8hour",
                                          style: TextStyle(
                                            color: Color(0xFF00A35E),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                "PlusJakartaSans-Regular",
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          "Rajeev Singh ",
                                          style: TextStyle(
                                            color: Color(0xFF00A35E),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                "PlusJakartaSans-Regular",
                                          ),
                                        ),
                                        SizedBox(width: 2),
                                        Container(
                                          height: 25,
                                          width: 1,
                                          color: Color.fromRGBO(
                                            17,
                                            164,
                                            102,
                                            1,
                                          ),
                                        ),
                                        SizedBox(width: 6),
                                        Text(
                                          "Head Chef",
                                          style: TextStyle(
                                            color: Color(0xFF00A35E),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                "PlusJakartaSans-Regular",
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Shift Assigned to chef 6th Row
                            Row(
                              children: [
                                chefAssignedForTimeContainer(
                                  containerHeight: 41,
                                  containerWidth: 589,
                                  containerBGColor: Color.fromRGBO(
                                    202,
                                    186,
                                    47,
                                    0.1,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Row(
                                      children: [
                                        SizedBox(width: 2),
                                        Text(
                                          "3:45/8hour",
                                          style: TextStyle(
                                            color: Color(0xFFCDBB21),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                "PlusJakartaSans-Regular",
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          "Rajeev Singh ",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                "PlusJakartaSans-Regular",
                                            color: Color(0xFFCDBB21),
                                          ),
                                        ),
                                        SizedBox(width: 70),
                                        Container(
                                          height: 25,
                                          width: 1,
                                          color: Color(0xFFCDBB21),
                                        ),
                                        SizedBox(width: 40),
                                        Text(
                                          "Head Chef",
                                          style: TextStyle(
                                            color: Color(0xFFCDBB21),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                "PlusJakartaSans-Regular",
                                          ),
                                        ),
                                        SizedBox(width: 40),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Shift Assigned to chef 7th Row
                            Row(
                              children: [
                                SizedBox(width: 250),
                                chefAssignedForTimeContainer(
                                  containerHeight: 41,
                                  containerWidth: 485,
                                  containerBGColor: Color.fromRGBO(
                                    133,
                                    211,
                                    178,
                                    0.3,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Row(
                                      children: [
                                        SizedBox(width: 20),
                                        Text(
                                          "3:45/8hour",
                                          style: TextStyle(
                                            color: Color(0xFF00A35E),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                "PlusJakartaSans-Regular",
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          "Rajeev Singh ",
                                          style: TextStyle(
                                            color: Color(0xFF00A35E),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                "PlusJakartaSans-Regular",
                                          ),
                                        ),
                                        SizedBox(width: 40),
                                        Container(
                                          height: 25,
                                          width: 1,
                                          color: Color.fromRGBO(
                                            17,
                                            164,
                                            102,
                                            1,
                                          ),
                                        ),
                                        SizedBox(width: 20),
                                        Text(
                                          "Head Chef",
                                          style: TextStyle(
                                            color: Color(0xFF00A35E),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                "PlusJakartaSans-Regular",
                                          ),
                                        ),
                                        SizedBox(width: 20),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Shift Assigned to chef 8th Row
                            Row(
                              children: [
                                SizedBox(width: 150),
                                chefAssignedForTimeContainer(
                                  containerHeight: 41,
                                  containerWidth: 660,
                                  containerBGColor: Color.fromRGBO(
                                    133,
                                    211,
                                    178,
                                    0.3,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Row(
                                      children: [
                                        SizedBox(width: 20),
                                        Text(
                                          "3:45/8hour",
                                          style: TextStyle(
                                            color: Color(0xFF00A35E),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                "PlusJakartaSans-Regular",
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          "Rajeev Singh ",
                                          style: TextStyle(
                                            color: Color(0xFF00A35E),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                "PlusJakartaSans-Regular",
                                          ),
                                        ),
                                        SizedBox(width: 80),
                                        Container(
                                          height: 25,
                                          width: 1,
                                          color: Color.fromRGBO(
                                            17,
                                            164,
                                            102,
                                            1,
                                          ),
                                        ),
                                        SizedBox(width: 40),
                                        Text(
                                          "Head Chef",
                                          style: TextStyle(
                                            color: Color(0xFF00A35E),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                "PlusJakartaSans-Regular",
                                          ),
                                        ),
                                        SizedBox(width: 50),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
