import 'package:dem/src/model/mess_data_interface.dart';
import 'package:flutter/material.dart';

class Mess extends MessData {
  String? messName;
  double? messRating;
  double? messRatingCount;

  Mess({
    @required this.messName,
    @required this.messRating,
    @required this.messRatingCount,
  });


  @override
  void printMessage() {
    debugPrint("Mess Name: $messName");
    debugPrint("Mess Rating: $messRating");
    debugPrint("Mess Rating Count: $messRatingCount");
  }
}
