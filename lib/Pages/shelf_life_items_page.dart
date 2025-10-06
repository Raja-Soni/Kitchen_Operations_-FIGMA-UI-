import 'package:flutter/material.dart';
import 'package:kitchen_operations/customWidgets/import_all_custom_widgets.dart';

class ShelfLifeItemsPage extends StatefulWidget {
  const ShelfLifeItemsPage({super.key});

  @override
  State<ShelfLifeItemsPage> createState() => ShelfLifeItemsPageState();
}

class ShelfLifeItemsPageState extends State<ShelfLifeItemsPage> {
  List<Map<String, dynamic>> shelfItemList = [
    {
      "itemId": "IN01",
      "itemName": "Tomato",
      "itemType": "Vegetables",
      "preservationMethod": "Refrigerator",
      "storageLocation": "Location 1",
      "totalAvailableQuantity": 8,
      "daysLeftToShelfLife": 2,
      "availableQuantity": 2,
    },
    {
      "itemId": "IN01",
      "itemName": "Cheese",
      "itemType": "Dairy",
      "preservationMethod": "Deep Freeze",
      "storageLocation": "Location 2 ",
      "totalAvailableQuantity": 5,
      "daysLeftToShelfLife": 3,
      "availableQuantity": 3,
    },
    {
      "itemId": "IN01",
      "itemName": "Rice",
      "itemType": "Grocery",
      "preservationMethod": "Dry",
      "storageLocation": "Location 1",
      "totalAvailableQuantity": 20,
      "daysLeftToShelfLife": 5,
      "availableQuantity": 5,
    },
    {
      "itemId": "IN01",
      "itemName": "Tomato",
      "itemType": "Vegetables",
      "preservationMethod": "Refrigerator",
      "storageLocation": "Location 2",
      "totalAvailableQuantity": 8,
      "daysLeftToShelfLife": 6,
      "availableQuantity": 7,
    },
    {
      "itemId": "IN01",
      "itemName": "Tomato",
      "itemType": "Vegetables",
      "preservationMethod": "Refrigerator",
      "storageLocation": "Location 2",
      "totalAvailableQuantity": 8,
      "daysLeftToShelfLife": 2,
      "availableQuantity": 7,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            width: 1420,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Divider(color: Color(0xFFEFEFF0), thickness: 2),
                shelfListItemTitle(),
                Divider(color: Color(0xFFEFEFF0), thickness: 2),
                Expanded(
                  child: ListView.builder(
                    itemCount: shelfItemList.length,
                    itemBuilder: (context, index) {
                      final item = shelfItemList[index];
                      return Column(
                        children: [
                          shelfListItem(
                            itemId: item["itemId"],
                            itemName: item["itemName"],
                            itemType: item["itemType"],
                            preservationMethod: item["preservationMethod"],
                            storageLocation: item["storageLocation"],
                            totalAvailableQty: item["totalAvailableQuantity"],
                            daysLeftToShelLife: item["daysLeftToShelfLife"],
                            availableQty: item["availableQuantity"],
                          ),
                          Divider(color: Color(0xFFEFEFF0), thickness: 1),
                        ],
                      );
                    },
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
