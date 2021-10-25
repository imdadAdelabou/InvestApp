import "package:flutter/material.dart";

class DisplayGuide extends StatelessWidget {
  final String title;
  final String content;
  final String urlImage;
  const DisplayGuide({
    Key? key,
    required this.title,
    required this.content,
    required this.urlImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontFamily: "DMSANS",
                  fontWeight: FontWeight.w700,
                  fontSize: 15.0,
                ),
              ),
              Text(
                content,
                style: const TextStyle(
                  fontFamily: "SFPRODISPLAY",
                  fontWeight: FontWeight.w400,
                  fontSize: 14.0,
                  letterSpacing: 0.8,
                ),
              ),
            ],
          ),
          CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.red,
            backgroundImage: AssetImage(urlImage),
          )
        ],
      ),
    );
  }
}
