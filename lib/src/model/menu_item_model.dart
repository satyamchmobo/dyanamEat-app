
import 'package:dem/src/model/mess_data_interface.dart';
import 'package:flutter/material.dart';
class MenuItem extends MessData {
  String? itemName;
  double? itemDetail;

  MenuItem({
    @required this.itemName,
    @required this.itemDetail,
  });

  @override
  void printMessage() {
    debugPrint("Item Name: $itemName");
    debugPrint("Item Detail: $itemDetail");
  }
}
