import "package:flutter/material.dart";
import 'package:invest_app/utils/constants.dart';

class PrintData extends StatelessWidget {
  final String head;
  final String content;
  const PrintData({
    Key? key,
    required this.head,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          head,
          style: const TextStyle(
            fontFamily: "SFPROTEXT",
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              content,
              style: const TextStyle(
                fontFamily: "SFPRODISPLAY",
                fontWeight: FontWeight.w400,
                fontSize: 14.0,
                color: Color(0xff333333),
              ),
            ),
            SizedBox(
              height: 30.0,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Change",
                  style: textButtonStyle,
                ),
              ),
            )
          ],
        ),
        const Divider(
          color: Colors.grey,
          thickness: 1,
        ),
        const SizedBox(height: 20.0),
      ],
    );
  }
}
