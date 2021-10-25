import "package:flutter/material.dart";
import 'package:invest_app/models/plan_model.dart';

TextStyle headTitleStyle(double size) {
  return TextStyle(
    fontFamily: "DMSANS",
    fontSize: size,
    fontWeight: FontWeight.w700,
  );
}

TextStyle contentStyle = const TextStyle(
  fontFamily: "SFPROTEXT",
  fontWeight: FontWeight.w600,
  fontSize: 17.0,
);

TextStyle textButtonStyle = const TextStyle(
  fontFamily: "SFPROTEXT",
  fontWeight: FontWeight.w600,
  fontSize: 12.0,
  color: Color(0xff31A062),
);

List<PlanModel> plans = const [
  PlanModel(
    usdImage: "assets/imgs/gold.png",
    name: "Gold",
    color1: Color(0xffF0C735),
    color2: Color(0xffD98F39),
    nb: 30,
  ),
  PlanModel(
    usdImage: "assets/imgs/silver.png",
    name: "Silver",
    color1: Color(0xffCAC9C9),
    color2: Color(0xff979797),
    nb: 60,
  ),
  PlanModel(
    usdImage: "assets/imgs/platnium.png",
    name: "Platinum",
    color1: Color(0xffBA8DF3),
    color2: Color(0xff615EE2),
    nb: 90,
  ),
];
