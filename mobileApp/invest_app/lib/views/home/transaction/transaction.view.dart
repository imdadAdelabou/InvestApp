import "package:flutter/material.dart";
import 'package:invest_app/utils/constants.dart';
import 'package:invest_app/views/home/transaction/history.dart';
import 'package:invest_app/views/home/transaction/type_of_card.dart';

class TransactionView extends StatelessWidget {
  const TransactionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "My Asset",
                        style: TextStyle(
                          fontFamily: "DMSANS",
                          fontWeight: FontWeight.w700,
                          fontSize: 22.0,
                        ),
                      ),
                      // CircleAvatar(
                      //   radius: 15.0,
                      //   backgroundColor: Color(0xffB2B2B2),
                      //   child: Icon(
                      //     Icons.close_outlined,
                      //     color: Colors.white,
                      //   ),
                      // ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  const Text(
                    "Your total asset portfolio",
                    style: TextStyle(
                      fontFamily: "SFPROTEXT",
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                      color: Color(0xffB2B2B2),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    children: const [
                      Text(
                        "N203,935",
                        style: TextStyle(
                          fontFamily: "SFPRODISPLAY",
                          fontWeight: FontWeight.w600,
                          fontSize: 32.0,
                        ),
                      ),
                      SizedBox(width: 39.0),
                      Icon(
                        Icons.arrow_upward,
                        color: Color(0xff00B907),
                      ),
                      SizedBox(width: 2.0),
                      Text(
                        "+2%",
                        style: TextStyle(
                          fontFamily: "SFPRODISPLAY",
                          fontWeight: FontWeight.w400,
                          color: Color(0xff00B907),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  Text(
                    "Current Plans",
                    style: headTitleStyle(22.0),
                  ),
                  const SizedBox(height: 20.0),
                  const TypeOfCard(),
                  const SizedBox(height: 25.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "See All Plans",
                        style: TextStyle(
                          fontFamily: "SFPRODISPLAY",
                          fontWeight: FontWeight.w500,
                          fontSize: 18.0,
                          letterSpacing: 0.8,
                          color: Color(0xffFE555D),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                        child: Icon(
                          Icons.arrow_right_alt,
                          color: Color(0xffFE555D),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  const History(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
