import 'package:dem/src/model/menu_item_model.dart';
import 'package:dem/src/model/mess_data_interface.dart';
import 'package:flutter/material.dart';
class Thali implements MessData {
  double? menuPrice;
  DateTime? lastUpdatedDate;
  List<MenuItem>? menuItems;

  Thali({
    @required this.menuPrice,
    @required this.lastUpdatedDate,
    @required this.menuItems,
  });

  @override
  void printMessage() {
    debugPrint("Menu Price: $menuPrice");
    debugPrint("Last Updated Date: $lastUpdatedDate");
    debugPrint("Menu Items: $menuItems");
  }
}
