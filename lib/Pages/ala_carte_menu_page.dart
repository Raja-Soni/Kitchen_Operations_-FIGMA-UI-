import 'package:flutter/material.dart';

class AlaCarteMenuPage extends StatefulWidget {
  const AlaCarteMenuPage({super.key});

  @override
  State<AlaCarteMenuPage> createState() => AlaCarteMenuPageState();
}

class AlaCarteMenuPageState extends State<AlaCarteMenuPage> {
  int currentSelectedTab = 0;
  late Widget currentMenuSubPage = prepareSubPage();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.only(left: 12.0),
          height: 23,
          width: 269,
          alignment: Alignment.center,
          child: Text(
            "Breakfast Menu & Quantity",
            style: TextStyle(
              fontFamily: "PlusJakartaSans-Regular",
              fontSize: 20,
              fontWeight: FontWeight.w600,
              height: 1.16,
              letterSpacing: 0,
            ),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentSelectedTab = 0;
                    currentMenuSubPage = prepareSubPage();
                  });
                },
                child: Container(
                  height: 40,
                  width: 103,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: currentSelectedTab == 0
                        ? Color(0xFF1D1929)
                        : Color(0xFFE8E8ED),
                  ),
                  child: Container(
                    height: 19,
                    width: 87.34,
                    alignment: Alignment.center,
                    child: Text(
                      "Prepare",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "PlusJakartaSans-Regular",
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        height: 0.98,
                        letterSpacing: 0,
                        color: currentSelectedTab == 0
                            ? Color(0xFFF6F6F6)
                            : Color(0xFF1D1929),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentSelectedTab = 1;
                    currentMenuSubPage = availableSubPage();
                  });
                },
                child: Container(
                  height: 40,
                  width: 102,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: currentSelectedTab == 1
                        ? Color(0xFF1D1929)
                        : Color(0xFFE8E8ED),
                  ),
                  child: Container(
                    height: 19,
                    width: 87,
                    alignment: Alignment.center,
                    child: Text(
                      "Available",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "PlusJakartaSans-Regular",
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        height: 0.98,
                        letterSpacing: 0,
                        color: currentSelectedTab == 1
                            ? Color(0xFFF6F6F6)
                            : Color(0xFF1D1929),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentSelectedTab = 2;
                    currentMenuSubPage = requiredSubPage();
                  });
                },
                child: Container(
                  height: 40,
                  width: 103,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: currentSelectedTab == 2
                        ? Color(0xFF1D1929)
                        : Color(0xFFE8E8ED),
                  ),
                  child: Container(
                    height: 19,
                    width: 87,
                    alignment: Alignment.center,
                    child: Text(
                      "Required",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "PlusJakartaSans-Regular",
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        height: 0.98,
                        letterSpacing: 0,
                        color: currentSelectedTab == 2
                            ? Color(0xFFF6F6F6)
                            : Color(0xFF1D1929),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Expanded(child: currentMenuSubPage),
      ],
    );
  }

  Widget prepareSubPage() {
    return Center(
      child: Text(
        "Prepare Menu Sub Page",
        style: TextStyle(fontFamily: "PlusJakartaSans-Regular", fontSize: 18),
      ),
    );
  }

  Widget availableSubPage() {
    return SingleChildScrollView(
      child: Center(
        child: Container(
          height: 274,
          width: 391,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 93,
                        alignment: Alignment.center,
                        child: Text(
                          "Item Name",
                          style: TextStyle(
                            fontFamily: "PlusJakartaSans-Regular",
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            height: 1.0,
                            letterSpacing: 0,
                            color: Color(0xFF6E7C87),
                          ),
                        ),
                      ),
                      SizedBox(width: 0),
                      Container(
                        width: 93,
                        alignment: Alignment.center,
                        child: Text(
                          "Available Quantity",
                          style: TextStyle(
                            fontFamily: "PlusJakartaSans-Regular",
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            height: 1.0,
                            letterSpacing: 0,
                            color: Color(0xFF6E7C87),
                          ),
                        ),
                      ),
                      Container(
                        width: 105,
                        alignment: Alignment.center,
                        child: Text(
                          "Updated by",
                          style: TextStyle(
                            fontFamily: "PlusJakartaSans-Regular",
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            height: 1.0,
                            letterSpacing: 0,
                            color: Color(0xFF6E7C87),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(color: Color(0xFFE9EDF3), thickness: 1),
                SizedBox(height: 8),
                SizedBox(
                  height: 138,
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: 6.0),
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 18,
                            width: 116,
                            alignment: Alignment.center,
                            child: Text(
                              "Beef Steak",
                              style: TextStyle(
                                fontFamily: "PlusJakartaSans-Regular",
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                height: 1.0,
                                letterSpacing: 0,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                          Container(
                            height: 18,
                            width: 111,
                            alignment: Alignment.center,
                            child: Text(
                              "100 kg",
                              style: TextStyle(
                                fontFamily: "PlusJakartaSans-Regular",
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                height: 1.0,
                                letterSpacing: 0,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                          SizedBox(width: 12),
                          Container(
                            height: 18,
                            width: 105,
                            alignment: Alignment.center,
                            child: Text(
                              "Rahul K.",
                              style: TextStyle(
                                fontFamily: "PlusJakartaSans-Regular",
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                height: 1.0,
                                letterSpacing: 0,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          SizedBox(width: 7),
                          Container(
                            height: 18,
                            width: 116,
                            alignment: Alignment.center,
                            child: Text(
                              "Paneer Tikka",
                              style: TextStyle(
                                fontFamily: "PlusJakartaSans-Regular",
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                height: 1.0,
                                letterSpacing: 0,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                          SizedBox(width: 21),
                          Container(
                            height: 18,
                            alignment: Alignment.center,
                            child: Text(
                              "--",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "PlusJakartaSans-Regular",
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                height: 1.0,
                                letterSpacing: 0,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                          SizedBox(width: 75),
                          Container(
                            height: 18,
                            width: 105,
                            alignment: Alignment.center,
                            child: Text(
                              "Salman",
                              style: TextStyle(
                                fontFamily: "PlusJakartaSans-Regular",
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                height: 1.0,
                                letterSpacing: 0,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          SizedBox(width: 7),
                          Container(
                            height: 18,
                            width: 103,
                            alignment: Alignment.center,
                            child: Text(
                              "Beef Steak",
                              style: TextStyle(
                                fontFamily: "PlusJakartaSans-Regular",
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                height: 1.0,
                                letterSpacing: 0,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          Container(
                            height: 18,
                            width: 111,
                            alignment: Alignment.center,
                            child: Text(
                              "100 kg",
                              style: TextStyle(
                                fontFamily: "PlusJakartaSans-Regular",
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                height: 1.0,
                                letterSpacing: 0,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                          SizedBox(width: 30),
                          Container(
                            height: 18,
                            alignment: Alignment.center,
                            child: Text(
                              "--",
                              style: TextStyle(
                                fontFamily: "PlusJakartaSans-Regular",
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                height: 1.0,
                                letterSpacing: 0,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          SizedBox(width: 7),
                          Container(
                            height: 18,
                            width: 116,
                            alignment: Alignment.center,
                            child: Text(
                              "Paneer Tikka",
                              style: TextStyle(
                                fontFamily: "PlusJakartaSans-Regular",
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                height: 1.0,
                                letterSpacing: 0,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                          SizedBox(width: 22),
                          Container(
                            height: 18,
                            alignment: Alignment.center,
                            child: Text(
                              "50 kg",
                              style: TextStyle(
                                fontFamily: "PlusJakartaSans-Regular",
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                height: 1.0,
                                letterSpacing: 0,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                          SizedBox(width: 50),
                          Container(
                            height: 18,
                            width: 96,
                            alignment: Alignment.center,
                            child: Text(
                              "Salman.",
                              style: TextStyle(
                                fontFamily: "PlusJakartaSans-Regular",
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                height: 1.0,
                                letterSpacing: 0,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Container(
                    height: 41,
                    width: 96,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(width: 1, color: Color(0xFF1D1929)),
                    ),
                    child: Container(
                      height: 28,
                      width: 78.14,
                      alignment: Alignment.center,
                      child: Text(
                        "Edit",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "PlusJakartaSans-Regular",
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          height: 1.0,
                          letterSpacing: 0,
                          color: Color(0xFF1D1929),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget requiredSubPage() {
    return SingleChildScrollView(
      child: Center(
        child: Container(
          height: 299,
          width: 391,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 93,
                        alignment: Alignment.center,
                        child: Text(
                          "Item Name",
                          style: TextStyle(
                            fontFamily: "PlusJakartaSans-Regular",
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            height: 1.0,
                            letterSpacing: 0,
                            color: Color(0xFF6E7C87),
                          ),
                        ),
                      ),
                      SizedBox(width: 0),
                      Container(
                        width: 93,
                        alignment: Alignment.center,
                        child: Text(
                          "Required Quantity",
                          style: TextStyle(
                            fontFamily: "PlusJakartaSans-Regular",
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            height: 1.0,
                            letterSpacing: 0,
                            color: Color(0xFF6E7C87),
                          ),
                        ),
                      ),
                      Container(
                        width: 105,
                        alignment: Alignment.center,
                        child: Text(
                          "Updated by",
                          style: TextStyle(
                            fontFamily: "PlusJakartaSans-Regular",
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            height: 1.0,
                            letterSpacing: 0,
                            color: Color(0xFF6E7C87),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(color: Color(0xFFE9EDF3), thickness: 1),
                SizedBox(height: 8),
                SizedBox(
                  height: 165,
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: 6.0),
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 18,
                            width: 116,
                            alignment: Alignment.center,
                            child: Text(
                              "Beef Steak",
                              style: TextStyle(
                                fontFamily: "PlusJakartaSans-Regular",
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                height: 1.0,
                                letterSpacing: 0,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 29,
                            width: 112,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.0),
                              border: Border.all(
                                width: 1,
                                color: Color(0xFF000000),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 6.0,
                                vertical: 2.0,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "50",
                                      style: TextStyle(
                                        fontFamily: "PlusJakartaSans-Regular",
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        height: 1.0,
                                        letterSpacing: 0,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Kg",
                                      style: TextStyle(
                                        fontFamily: "PlusJakartaSans-Regular",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        height: 1.0,
                                        letterSpacing: 0,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 18,
                            width: 105,
                            alignment: Alignment.center,
                            child: Text(
                              "Rahul K.",
                              style: TextStyle(
                                fontFamily: "PlusJakartaSans-Regular",
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                height: 1.0,
                                letterSpacing: 0,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          SizedBox(width: 10),
                          Container(
                            height: 18,
                            alignment: Alignment.center,
                            child: Text(
                              "Paneer Tikka",
                              style: TextStyle(
                                fontFamily: "PlusJakartaSans-Regular",
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                height: 1.0,
                                letterSpacing: 0,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 29,
                            width: 112,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.0),
                              border: Border.all(
                                width: 1,
                                color: Color(0xFF000000),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 6.0,
                                vertical: 2.0,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "50",
                                      style: TextStyle(
                                        fontFamily: "PlusJakartaSans-Regular",
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        height: 1.0,
                                        letterSpacing: 0,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Pieces",
                                      style: TextStyle(
                                        fontFamily: "PlusJakartaSans-Regular",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        height: 1.0,
                                        letterSpacing: 0,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 18,
                            width: 105,
                            alignment: Alignment.center,
                            child: Text(
                              "Salman",
                              style: TextStyle(
                                fontFamily: "PlusJakartaSans-Regular",
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                height: 1.0,
                                letterSpacing: 0,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          Container(
                            height: 18,
                            width: 116,
                            alignment: Alignment.center,
                            child: Text(
                              "Beef Steak",
                              style: TextStyle(
                                fontFamily: "PlusJakartaSans-Regular",
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                height: 1.0,
                                letterSpacing: 0,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 29,
                            width: 112,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.0),
                              border: Border.all(
                                width: 1,
                                color: Color(0xFF000000),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 6.0,
                                vertical: 2.0,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "50",
                                      style: TextStyle(
                                        fontFamily: "PlusJakartaSans-Regular",
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        height: 1.0,
                                        letterSpacing: 0,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Kg",
                                      style: TextStyle(
                                        fontFamily: "PlusJakartaSans-Regular",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        height: 1.0,
                                        letterSpacing: 0,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 22),
                          Container(
                            height: 18,
                            alignment: Alignment.center,
                            child: Text(
                              "--",
                              style: TextStyle(
                                fontFamily: "PlusJakartaSans-Regular",
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                height: 1.0,
                                letterSpacing: 0,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          SizedBox(width: 10),
                          Container(
                            height: 18,
                            alignment: Alignment.center,
                            child: Text(
                              "Paneer Tikka",
                              style: TextStyle(
                                fontFamily: "PlusJakartaSans-Regular",
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                height: 1.0,
                                letterSpacing: 0,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 29,
                            width: 112,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.0),
                              border: Border.all(
                                width: 1,
                                color: Color(0xFF000000),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 6.0,
                                vertical: 2.0,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "50",
                                      style: TextStyle(
                                        fontFamily: "PlusJakartaSans-Regular",
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        height: 1.0,
                                        letterSpacing: 0,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Pieces",
                                      style: TextStyle(
                                        fontFamily: "PlusJakartaSans-Regular",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        height: 1.0,
                                        letterSpacing: 0,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 18,
                            width: 105,
                            alignment: Alignment.center,
                            child: Text(
                              "Salman",
                              style: TextStyle(
                                fontFamily: "PlusJakartaSans-Regular",
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                height: 1.0,
                                letterSpacing: 0,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Container(
                    height: 41,
                    width: 96,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xFF1D1929),
                    ),
                    child: Container(
                      height: 28,
                      width: 78.14,
                      alignment: Alignment.center,
                      child: Text(
                        "Save",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "PlusJakartaSans-Regular",
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          height: 1.0,
                          letterSpacing: 0,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
