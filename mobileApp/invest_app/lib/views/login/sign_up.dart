import "package:flutter/material.dart";
import 'package:invest_app/components/custom_button.dart';
import 'package:invest_app/components/custom_text_field.dart';
import 'package:invest_app/utils/constants.dart';

class SignUpView extends StatelessWidget {
  static const String name = "/sign-up";
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(
              Icons.chevron_left,
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 36.0),
          child: Center(
            child: Column(
              children: [
                Text(
                  "Create an account",
                  style: headTitleStyle(30),
                ),
                const Text(
                  "Invest and double your income now",
                  style: TextStyle(
                    fontFamily: "SFPROTEXT",
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    color: Color(0xff4F4F4F),
                  ),
                ),
                const SizedBox(height: 87.0),
                const CustomTextField(hinText: "Full name"),
                const SizedBox(height: 18.0),
                const CustomTextField(hinText: "Email address"),
                const SizedBox(height: 18.0),
                const CustomTextField(hinText: "Password"),
                const SizedBox(height: 18.0),
                CustomButton(
                  action: () {},
                  content: Text(
                    "Create account",
                    style: contentStyle,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Already have an account?",
                    style: textButtonStyle,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
