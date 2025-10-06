import 'package:flutter/material.dart';

class PreparedItemsPage extends StatefulWidget {
  const PreparedItemsPage({super.key});

  @override
  State<PreparedItemsPage> createState() => PreparedItemsPageState();
}

class PreparedItemsPageState extends State<PreparedItemsPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      child: Center(
        child: Text(
          "PrePared ItemsPage",
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
