import "package:flutter/material.dart";

class PlanCard extends StatelessWidget {
  final String usdImage;
  final String name;
  final Color color1;
  final Color color2;
  final int nb;
  const PlanCard({
    Key? key,
    required this.usdImage,
    required this.name,
    required this.color1,
    required this.color2,
    required this.nb,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: SizedBox(
        width: 134,
        height: 170,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            gradient: LinearGradient(
              colors: [
                color1,
                color2,
              ],
              begin: Alignment.topCenter,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 20.0,
                left: 15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontFamily: "SFPROTEXT",
                        fontWeight: FontWeight.w600,
                        fontSize: 17.0,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "$nb% return",
                      style: const TextStyle(
                        fontFamily: "SFPROTEXT",
                        fontWeight: FontWeight.w600,
                        fontSize: 13.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: name == "Platinum" ? 25.0 : 15.0,
                right: name == "Platinum" ? -48 : -1,
                child: Image.asset(usdImage),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
