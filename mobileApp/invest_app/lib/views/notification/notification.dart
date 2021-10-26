import "package:flutter/material.dart";
import 'package:invest_app/utils/constants.dart';
import 'package:invest_app/views/notification/notif_component.dart';

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
          leading: InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: const Icon(
              Icons.chevron_left,
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Notification",
                style: headTitleStyle(30.0),
              ),
              const SizedBox(height: 44.0),
              ...List.generate(
                notifs.length,
                (index) => NotifComponent(
                  image: notifs[index].urlImage,
                  content: notifs[index].content,
                  hours: notifs[index].dateNotif,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
