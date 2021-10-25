import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:invest_app/utils/constants.dart';
import 'package:invest_app/views/home/card_portfolio.dart';
import 'package:invest_app/views/home/display_guide.dart';
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
              const SizedBox(height: 40.0),
              Text(
                "Investment Guide",
                style: headTitleStyle(22),
              ),
              const SizedBox(height: 10.0),
              const DisplayGuide(
                urlImage: "assets/imgs/Ellipse 740.png",
                title: "Basic type of investments",
                content:
                    "This is how you set your foot for 2020 \nStock market recession. What’s next...",
              ),
              const SizedBox(
                width: double.infinity,
                child: Divider(
                  thickness: 1.5,
                ),
              ),
              const DisplayGuide(
                title: "How much can you start wit..",
                content:
                    "What do you like to see? It’s a very \ndifferent market from 2018. The way...",
                urlImage: "assets/imgs/second.png",
              )
            ],
          ),
        ),
      ),
    );
  }
}
