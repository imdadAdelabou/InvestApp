import "package:flutter/material.dart";
import 'package:invest_app/components/custom_list_tile.dart';
import 'package:invest_app/utils/constants.dart';
import 'package:invest_app/views/profile/contact_info.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Profile",
            style: headTitleStyle(34.0),
          ),
          const SizedBox(height: 29.0),
          const Center(
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 60.0,
              backgroundImage: AssetImage(
                "assets/imgs/Ellipse 741.png",
              ),
            ),
          ),
          const SizedBox(height: 21.0),
          Center(
            child: Text(
              "Jonas Macroni",
              style: headTitleStyle(16.0),
            ),
          ),
          const SizedBox(height: 7.0),
          const Center(
            child: Text(
              "Expert",
              style: TextStyle(
                fontFamily: "SFPROTEXT",
                fontWeight: FontWeight.w400,
                fontSize: 17.0,
              ),
            ),
          ),
          const SizedBox(height: 29.0),
          ...List.generate(
            datas.length,
            (index) => Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: InkWell(
                onTap: () => Navigator.of(context).pushNamed(ContactInfo.name),
                child: CustomListTile(
                  icon: datas[index].icon,
                  content: datas[index].content,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
