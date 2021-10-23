import "package:flutter/material.dart";
import 'package:invest_app/components/custom_button.dart';
import 'package:invest_app/utils/constants.dart';
import 'package:invest_app/views/login/sign_up.dart';

class OnBoarding extends StatelessWidget {
  static const String name = "/onBoarding";
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 90.0),
              Image.asset("assets/imgs/onboardind01.png"),
              const SizedBox(height: 10.0),
              Text(
                "Stay on top of your finance with us.",
                style: headTitleStyle(34.0),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 11.0),
              const Text(
                "We are your new financial Advisors\n to recommed the best investments for you.",
                style: TextStyle(
                  fontFamily: "SFPROTEXT",
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34.0),
                child: CustomButton(
                  action: () {
                    Navigator.of(context).pushNamed(SignUpView.name);
                  },
                  content: Text(
                    "Create account",
                    style: contentStyle,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Login",
                  style: textButtonStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
