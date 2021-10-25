import 'package:flutter/material.dart';

class PlanModel {
  final String usdImage;
  final String name;
  final Color color1;
  final Color color2;
  final int nb;
  const PlanModel({
    required this.usdImage,
    required this.name,
    required this.color1,
    required this.color2,
    required this.nb,
  });
}
