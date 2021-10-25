import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:invest_app/utils/constants.dart';
import 'package:invest_app/views/home/card_portfolio.dart';
import 'package:invest_app/views/home/print_best_plan.dart';

class HomeView extends StatelessWidget {
  static const String name = "/home";
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.only(left: 5.0),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(
                FontAwesomeIcons.bell,
                color: Colors.black,
              ),
            ),
          ],
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome, Jessie.",
                style: headTitleStyle(30),
              ),
              const SizedBox(height: 31.0),
              const CardPortfolio(),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Best Plans",
                    style: TextStyle(
                      fontFamily: "DMSANS",
                      fontWeight: FontWeight.w700,
                      fontSize: 22.0,
                      letterSpacing: 0.8,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        "See All",
                        style: TextStyle(
                          fontFamily: "SFPRODISPLAY",
                          fontWeight: FontWeight.w500,
                          fontSize: 18.0,
                          letterSpacing: 0.8,
                          color: Color(0xffFE555D),
                        ),
                      ),
                      Icon(
                        Icons.arrow_right_alt,
                        color: Color(0xffFE555D),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 10.0),
              const PrintBestPlan(),
            ],
          ),
        ),
      ),
    );
  }
}
