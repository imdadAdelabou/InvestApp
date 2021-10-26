import "package:flutter/material.dart";
import 'package:invest_app/components/custom_button.dart';
import 'package:invest_app/utils/constants.dart';
import 'package:invest_app/views/home/bank/bank_component.dart';

class BankAccount extends StatelessWidget {
  static String name = "/bank-account";
  const BankAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double maxHeight = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: const Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
          backgroundColor: Colors.transparent,
          title: Text(
            "Bank of account info",
            style: headTitleStyle(17.0, color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Column(
            children: [
              ...List.generate(
                accounts.length,
                (index) => BankComponent(bank: accounts[index]),
              ),
              SizedBox(height: maxHeight * .8),
              CustomButton(
                action: () {},
                content: Text(
                  "Add account",
                  style: contentStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
