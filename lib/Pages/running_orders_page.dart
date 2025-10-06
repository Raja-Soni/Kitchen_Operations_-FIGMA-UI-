import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitchen_operations/bloc/cancel_running_order/cancel_running_order_bloc_event_state.dart';
import 'package:kitchen_operations/bloc/running_orders/running_orders_bloc_event_state.dart';

class RunningOrdersPage extends StatefulWidget {
  const RunningOrdersPage({super.key});
  @override
  State<StatefulWidget> createState() => RunningOrdersPageState();
}

class RunningOrdersPageState extends State<RunningOrdersPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RunningOrderBloc, RunningOrdersState>(
      builder: (context, itemState) {
        return Container(
          padding: EdgeInsets.only(left: 5, right: 5, top: 10),
          child: ListView.builder(
            padding: EdgeInsets.all(10),
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 8.0,
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    // Item Border
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12.0),
                      child: AnimatedContainer(
                        height: itemState.isCurrentItemExpanded![index]
                            ? 412
                            : 86,
                        width: 400,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Color(0xFFD0D5DD),
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        duration: Duration(milliseconds: 150),
                        curve: Curves.easeInOut,
                      ),
                    ),
                    // Item Card (Order Id, Room, Order Status, Timer
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 0.0,
                        vertical: 22.0,
                      ),
                      child: Row(
                        spacing: 16,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            spacing: 6,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Order Id",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "PlusJakartaSans-Regular",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    height: 1.0,
                                    letterSpacing: 0,
                                    color: Color(0xFF6E7C87),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "10098",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "PlusJakartaSans-Regular",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    height: 1.0,
                                    letterSpacing: 0,
                                    color: Color(0xFF1D1929),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 37,
                            width: 1,
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                          ),
                          Column(
                            spacing: 6,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Room",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "PlusJakartaSans-Regular",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    height: 1.0,
                                    letterSpacing: 0,
                                    color: Color(0xFF6E7C87),
                                  ),
                                ),
                              ),
                              Text(
                                "A-101",
                                style: TextStyle(
                                  fontFamily: "PlusJakartaSans-Regular",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  height: 1.0,
                                  letterSpacing: 0,
                                  color: Color(0xFF1D1929),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 37,
                            width: 1,
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                          ),
                          Column(
                            spacing: 6,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Order Status",
                                  style: TextStyle(
                                    fontFamily: "PlusJakartaSans-Regular",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    height: 1.0,
                                    letterSpacing: 0,
                                    color: Color(0xFF6E7C87),
                                  ),
                                ),
                              ),
                              Text(
                                "Preparing",
                                style: TextStyle(
                                  fontFamily: "PlusJakartaSans-Regular",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  height: 1.0,
                                  letterSpacing: 0,
                                  color: Color(0xFF1D1929),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 37,
                            width: 1,
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                          ),
                          Column(
                            spacing: 6,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Timer",
                                  style: TextStyle(
                                    fontFamily: "PlusJakartaSans-Regular",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    height: 1.0,
                                    letterSpacing: 0,
                                    color: Color(0xFF6E7C87),
                                  ),
                                ),
                              ),
                              Text(
                                "29:38",
                                style: TextStyle(
                                  fontFamily: "PlusJakartaSans-Regular",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  height: 1.0,
                                  letterSpacing: 0,
                                  color: Color(0xFF1D1929),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    if (itemState.isCurrentItemExpanded![index])
                      BlocBuilder<
                        CancelRunningOrderBloc,
                        CancelRunningOrderState
                      >(
                        builder: (context, cancelOrderState) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 40.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 40),
                                // Table header
                                Container(
                                  height: 1,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE9EDF3),
                                  ),
                                ),
                                SizedBox(height: 10),
                                // Expanded Item Title (Item Name, Quantity, Assigned, Status)
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8,
                                    top: 8.0,
                                    bottom: 8.0,
                                  ),
                                  child: Row(
                                    spacing: 2,
                                    children: [
                                      Container(
                                        width: 97,
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Item Name",
                                          style: TextStyle(
                                            fontFamily:
                                                "PlusJakartaSans-Regular",
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 0,
                                            color: Color(0xFF6E7C87),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 11,
                                        width: 1,
                                        color: Color.fromRGBO(0, 0, 0, 0.1),
                                      ),
                                      Container(
                                        width: 78,
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Quantity",
                                          style: TextStyle(
                                            fontFamily:
                                                "PlusJakartaSans-Regular",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            letterSpacing: 0,
                                            color: Color(0xFF6E7C87),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 3),
                                      Container(
                                        height: 11,
                                        width: 1,
                                        color: const Color.fromRGBO(
                                          0,
                                          0,
                                          0,
                                          0.1,
                                        ),
                                      ),
                                      SizedBox(width: 0.1),
                                      Container(
                                        width: 79,
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Assigned",
                                          style: TextStyle(
                                            fontFamily:
                                                "PlusJakartaSans-Regular",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            letterSpacing: 0,
                                            color: Color(0xFF6E7C87),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 1),
                                      cancelOrderState.cancelOrderButtonTapped!
                                          ? SizedBox(width: 10)
                                          : Container(
                                              height: 11,
                                              width: 1,
                                              color: const Color.fromRGBO(
                                                0,
                                                0,
                                                0,
                                                0.1,
                                              ),
                                            ),
                                      cancelOrderState.cancelOrderButtonTapped!
                                          ? SizedBox.shrink()
                                          : Container(
                                              width: 68,
                                              alignment: Alignment.center,
                                              child: Text(
                                                "Status",
                                                style: TextStyle(
                                                  fontFamily:
                                                      "PlusJakartaSans-Regular",
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16,
                                                  letterSpacing: 0,
                                                  color: Color(0xFF6E7C87),
                                                ),
                                              ),
                                            ),
                                    ],
                                  ),
                                ),
                                //  Order Item Details (Item Name, Quantity, Assigned, Status
                                SizedBox(
                                  height: 210,
                                  child: ListView.separated(
                                    separatorBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0,
                                        ),
                                        child: Divider(
                                          color: Color(0xFFE9EDF3),
                                        ),
                                      );
                                    },
                                    itemCount: 10,
                                    itemBuilder: (context, index) {
                                      return Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 16,
                                              top: 8.0,
                                              bottom: 8.0,
                                            ),
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 36,
                                                  width: 65,
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "Butter Chicken",
                                                    style: TextStyle(
                                                      fontFamily:
                                                          "PlusJakartaSans-Regular",
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 16,
                                                      height: 1.11,
                                                      letterSpacing: 0,
                                                      color: Color(0xFF1D1929),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 30),
                                                Container(
                                                  height: 22.63,
                                                  width: 88,
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "2 × 500g",
                                                    style: TextStyle(
                                                      fontFamily:
                                                          "PlusJakartaSans-Regular",
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 18,
                                                      height: 1.11,
                                                      letterSpacing: 0,
                                                      color: Color(0xFF1D1929),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 1),
                                                // if Assigned Value is empty then
                                                index == 2
                                                    ? Row(
                                                        children: [
                                                          SizedBox(width: 4),
                                                          SizedBox(
                                                            height: 18,
                                                            width: 65,
                                                            child: Text(
                                                              "Assign",
                                                              style: TextStyle(
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline,
                                                                decorationColor:
                                                                    Color(
                                                                      0xFF00A35E,
                                                                    ),
                                                                fontFamily:
                                                                    "PlusJakartaSans-Regular",
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontSize: 16,
                                                                height: 1.11,
                                                                letterSpacing:
                                                                    0,
                                                                color: Color(
                                                                  0xFF00A35E,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      )
                                                    : Container(
                                                        height: 18,
                                                        width: 65,
                                                        alignment:
                                                            Alignment.center,
                                                        child: Text(
                                                          "Rahul K.",
                                                          style: TextStyle(
                                                            fontFamily:
                                                                "PlusJakartaSans-Regular",
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 16,
                                                            height: 1.11,
                                                            letterSpacing: 0,
                                                            color: Color(
                                                              0xFF1D1929,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                cancelOrderState
                                                        .cancelOrderButtonTapped!
                                                    ? SizedBox(width: 30)
                                                    : SizedBox(width: 28),
                                                cancelOrderState
                                                        .cancelOrderButtonTapped!
                                                    ? GestureDetector(
                                                        onTap: () {},
                                                        child: Container(
                                                          height: 26,
                                                          width: 70,
                                                          decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  6.0,
                                                                ),
                                                            border: Border.all(
                                                              width: 1,
                                                              color: Color(
                                                                0xFFE43023,
                                                              ),
                                                            ),
                                                          ),
                                                          child: Container(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Text(
                                                              "Cancel",
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    "PlusJakartaSans-Regular",
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 14,
                                                                height: 1.0,
                                                                letterSpacing:
                                                                    0,
                                                                color: Color(
                                                                  0xFFE43023,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    : Container(
                                                        height: 18,
                                                        width: 79,
                                                        alignment:
                                                            Alignment.center,
                                                        child: Text(
                                                          "Prepared",
                                                          style: TextStyle(
                                                            fontFamily:
                                                                "PlusJakartaSans-Regular",
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 16,
                                                            height: 1.11,
                                                            letterSpacing: 0,
                                                            color: Color(
                                                              0xFF1D1929,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    cancelOrderState.cancelOrderButtonTapped !=
                                            true
                                        ? Padding(
                                            padding: const EdgeInsets.only(
                                              left: 16.0,
                                              top: 4.0,
                                            ),
                                            child: InkWell(
                                              onTap: () {
                                                context
                                                    .read<
                                                      CancelRunningOrderBloc
                                                    >()
                                                    .add(
                                                      IsCancelOrderButtonTapped(
                                                        isButtonTapped: true,
                                                      ),
                                                    );
                                              },
                                              child: Container(
                                                height: 41,
                                                width: 129,
                                                alignment: Alignment.center,
                                                padding: EdgeInsets.all(8.0),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(6),
                                                  border: Border.all(
                                                    width: 1,
                                                    color: Color(0xFF1D1929),
                                                  ),
                                                ),
                                                child: Text(
                                                  "Cancel Order",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontFamily:
                                                        "PlusJakartaSans-Regular",
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                    letterSpacing: 0,
                                                    color: Color(0xFF1D1929),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                        : SizedBox.shrink(),
                                    if (cancelOrderState
                                            .cancelOrderButtonTapped ==
                                        true)
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          right: 16.0,
                                        ),
                                        child: InkWell(
                                          onTap: () {
                                            context
                                                .read<CancelRunningOrderBloc>()
                                                .add(
                                                  IsCancelOrderButtonTapped(
                                                    isButtonTapped: false,
                                                  ),
                                                );
                                          },
                                          child: Container(
                                            height: 41,
                                            width: 129,
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.all(8.0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              border: Border.all(
                                                width: 1,
                                                color: Color(0xFFE43023),
                                              ),
                                            ),
                                            child: Container(
                                              alignment: Alignment.center,
                                              child: Text(
                                                "Cancel All",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily:
                                                      "PlusJakartaSans-Regular",
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.0,
                                                  letterSpacing: 0,
                                                  color: Color(0xFFE43023),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    // Arrow Icon
                    Positioned(
                      right: 12,
                      bottom: 0,
                      child: GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () {
                          context.read<RunningOrderBloc>().add(
                            ItemExpandedAtIndexEvent(index: index),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(
                              width: 1.5,
                              color: Color(0xFFD0D5DD),
                            ),
                          ),
                          child: Icon(
                            size: 20,
                            itemState.isCurrentItemExpanded![index]
                                ? Icons.keyboard_arrow_up_rounded
                                : Icons.keyboard_arrow_down_rounded,
                            color: Color(0xFFD0D5DD),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
