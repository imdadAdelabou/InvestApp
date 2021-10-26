import "package:flutter/material.dart";
import 'package:invest_app/utils/constants.dart';

class NotifComponent extends StatelessWidget {
  final String image;
  final String content;
  final String hours;
  const NotifComponent({
    Key? key,
    required this.image,
    required this.content,
    required this.hours,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                ),
              ),
            ),
            const SizedBox(width: 13.0),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Text(
                content,
                style: const TextStyle(
                  fontFamily: "SFPRODISPLAY",
                  fontWeight: FontWeight.w400,
                  fontSize: 14.0,
                  color: Colors.black,
                ),
              ),
            ),
            const Spacer(),
            Text(hours, style: descriptionStyle),
          ],
        ),
        const SizedBox(height: 5.0),
        const Divider(
          color: Colors.grey,
        ),
        const SizedBox(height: 30.0),
      ],
    );
  }
}
