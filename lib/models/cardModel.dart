import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class CardModel {
  String Methods;
  int cardBackground;
  var cardIcon;

  CardModel(this.Methods, this.cardBackground, this.cardIcon);
}
List<CardModel> cards = [
  new CardModel("Daily Wedge Method", 0xFFec407a, FlutterIcons.heart_ant),
  new CardModel("Total Days Method", 0xFF5c6bc0, FlutterIcons.tooth_mco),
  new CardModel("Work Days Method", 0xFFfbc02d, TablerIcons.eye),
  // new CardModel("Orthopaedic", 0xFF1565C0, Icons.wheelchair_pickup_sharp),
  // new CardModel("Paediatrician", 0xFF2E7D32, FlutterIcons.baby_faw5s),
];