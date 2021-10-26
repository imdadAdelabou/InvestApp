import "package:flutter/material.dart";
import 'package:invest_app/utils/constants.dart';
import 'package:invest_app/views/home/transaction/tile_history.dart';

class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "History",
          style: headTitleStyle(25.0),
        ),
        const SizedBox(height: 10.0),
        ...List.generate(
          4,
          (index) => Column(
            children: [
              TileHistory(
                title: histories[index].title,
                description: histories[index].description,
                headColor: histories[index].color,
              ),
              const SizedBox(height: 5.0),
              Visibility(
                visible: index != histories.length - 1,
                child: const Divider(),
              ),
            ],
          ),
        )
      ],
    );
  }
}
