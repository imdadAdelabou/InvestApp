import "package:flutter/material.dart";
import 'package:invest_app/utils/constants.dart';
import 'package:invest_app/views/home/plan_card.dart';

class PrintBestPlan extends StatelessWidget {
  const PrintBestPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 172.0,
      child: ListView.builder(
        itemCount: plans.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var plan = plans[index];
          return PlanCard(
              usdImage: plan.usdImage,
              name: plan.name,
              color1: plan.color1,
              color2: plan.color2,
              nb: plan.nb);
        },
      ),
    );
  }
}
