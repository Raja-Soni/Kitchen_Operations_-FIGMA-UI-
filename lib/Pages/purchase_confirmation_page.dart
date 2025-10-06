import 'package:flutter/material.dart';

class PurchaseConfirmationPage extends StatefulWidget {
  const PurchaseConfirmationPage({super.key});

  @override
  State<PurchaseConfirmationPage> createState() =>
      PurchaseConfirmationPageState();
}

class PurchaseConfirmationPageState extends State<PurchaseConfirmationPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      child: Center(
        child: Text(
          "Purchase Confirmation Page",
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
