import "package:flutter/material.dart";
import 'package:invest_app/utils/constants.dart';

class TileHistory extends StatelessWidget {
  final String title;
  final String description;
  final Color? headColor;
  const TileHistory({
    Key? key,
    required this.title,
    required this.description,
    this.headColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              fontFamily: "DMSANS",
              fontWeight: FontWeight.w700,
              fontSize: 18.0,
              color: headColor),
        ),
        const SizedBox(height: 5.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(description, style: descriptionStyle),
            Text(
              "TUE 22 Jun 2020",
              style: descriptionStyle,
            )
          ],
        )
      ],
    );
  }
}

//#00B907