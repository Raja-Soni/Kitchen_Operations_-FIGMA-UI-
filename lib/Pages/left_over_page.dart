import 'package:flutter/material.dart';

class LeftOverPage extends StatefulWidget {
  const LeftOverPage({super.key});

  @override
  State<LeftOverPage> createState() => LeftOverPageState();
}

class LeftOverPageState extends State<LeftOverPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      child: Center(
        child: Text(
          "Left Overs Page",
          style: TextStyle(
            fontFamily: "PlusJakartaSans-Regular",
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
