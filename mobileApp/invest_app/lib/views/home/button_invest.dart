import "package:flutter/material.dart";
import 'package:invest_app/utils/constants.dart';

class ButtonInvest extends StatelessWidget {
  const ButtonInvest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 125,
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          primary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        onPressed: () {},
        child: Text(
          "Invest now",
          style: textButtonStyle,
        ),
      ),
    );
  }
}
