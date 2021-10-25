import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:invest_app/utils/constants.dart';
import 'package:invest_app/views/home/card_portfolio.dart';

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
            ],
          ),
        ),
      ),
    );
  }
}
