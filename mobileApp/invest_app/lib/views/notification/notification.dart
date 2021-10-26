import "package:flutter/material.dart";
import 'package:invest_app/utils/constants.dart';

class NotificationView extends StatelessWidget {
  static const String name = "/notification";
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: const Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Column(
            children: [
              Text(
                "Notification",
                style: headTitleStyle(30.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
