import "package:flutter/material.dart";

class TypeOfCard extends StatelessWidget {
  const TypeOfCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 207,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        gradient: const LinearGradient(
          colors: [
            Color(0xffF0C735),
            Color(0xffD98F39),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 30.0,
            left: 28.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Gold",
                  style: TextStyle(
                    fontFamily: "SFPROTEXT",
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
                Text(
                  "30% return",
                  style: TextStyle(
                    fontFamily: "SFPROTEXT",
                    fontWeight: FontWeight.w600,
                    fontSize: 13.0,
                    color: Color(0xff0B2517),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 150.0),
            child: Image.asset(
              "assets/imgs/image_4-removebg-preview.png",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
