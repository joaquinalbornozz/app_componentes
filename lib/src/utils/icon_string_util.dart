import 'package:flutter/material.dart';

final Map<String, dynamic> _icons = {
  "add_alert": Icons.add_alert,
  "accessibility": Icons.accessibility,
  "folder_open": Icons.folder_open,
  "donut_large": Icons.donut_large,
  "inputs": Icons.input,
  "tune": Icons.tune,
  "list": Icons.list,
};

Icon getIcon(String icon, Color color) {
  return Icon(_icons[icon], color: color);
}
