import 'package:flutter/material.dart';
import 'package:invest_app/models/bank_model.dart';

class BankComponent extends StatelessWidget {
  final BankModel bank;
  const BankComponent({required this.bank});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 111,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Image.asset(bank.img),
              const SizedBox(width: 20.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    bank.title,
                    style: const TextStyle(
                      fontFamily: "SFPRODISPLAY",
                      fontWeight: FontWeight.w600,
                      fontSize: 14.0,
                      color: Color(0xff555555),
                    ),
                  ),
                  Text(
                    bank.subTitle,
                    style: const TextStyle(fontFamily: "SFPROTEXT"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
