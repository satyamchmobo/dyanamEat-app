import 'package:dem/src/model/mess_data_interface.dart';
import 'package:dem/src/model/mess_model.dart';
import 'package:flutter/material.dart';

class Location implements MessData {
  String? locationName;
  List<Mess>? messList;

  Location({
    @required this.locationName,
    @required this.messList,
  });

  @override
  void printMessage() {
    debugPrint("Location: $locationName");
    debugPrint("Mess List: $messList");
  }
}




