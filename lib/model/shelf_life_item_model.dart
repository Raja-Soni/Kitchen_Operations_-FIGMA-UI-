import 'package:equatable/equatable.dart';

class ShelfLifeItem extends Equatable {
  final String? itemId;
  final String? itemName;
  final String? itemType;
  final String? preservationMethod;
  final String? storageLocation;
  final int? totalAvailableQuantity;
  final int? daysLeftToShelLife;
  final int? availableQuantity;

  ShelfLifeItem({
    this.itemId,
    this.itemName,
    this.itemType,
    this.preservationMethod,
    this.storageLocation,
    this.totalAvailableQuantity,
    this.daysLeftToShelLife,
    this.availableQuantity,
  });

  @override
  List<Object?> get props => [
    itemId,
    itemName,
    itemType,
    preservationMethod,
    storageLocation,
    totalAvailableQuantity,
    daysLeftToShelLife,
    availableQuantity,
  ];
}
