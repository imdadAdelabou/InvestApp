import "package:flutter/material.dart";
import 'package:flutter_svg/svg.dart';
import 'package:invest_app/utils/constants.dart';

class CustomListTile extends StatelessWidget {
  final String icon;
  final String content;
  const CustomListTile({
    Key? key,
    required this.icon,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60.0,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 23.0),
          child: Row(
            children: [
              SvgPicture.asset(icon),
              const SizedBox(width: 36.0),
              Text(
                content,
                style: contentStyle,
              ),
              const Spacer(),
              const Icon(Icons.chevron_right)
            ],
          ),
        ),
      ),
    );
  }
}
