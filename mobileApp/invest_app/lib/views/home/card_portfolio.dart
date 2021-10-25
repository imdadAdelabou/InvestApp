import "package:flutter/material.dart";
import 'package:invest_app/views/home/button_invest.dart';

class CardPortfolio extends StatelessWidget {
  const CardPortfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: const Color(0xff31A078),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
              top: 30.0, right: 6.0, bottom: 20.0, left: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Your total asset portfolio",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "SFPROTEXT",
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(height: 11.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "N203,935",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 32.0,
                      fontFamily: "SFPRODISPLAY",
                    ),
                  ),
                  ButtonInvest(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
