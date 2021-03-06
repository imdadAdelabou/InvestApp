import "package:flutter/material.dart";
import 'package:invest_app/models/bank_model.dart';
import 'package:invest_app/models/history_model.dart';
import 'package:invest_app/models/notif_model.dart';
import 'package:invest_app/models/plan_model.dart';
import 'package:invest_app/models/user_data.dart';
import 'package:invest_app/views/home/bank/bank_account.dart';
import 'package:invest_app/views/home/main.dart';
import 'package:invest_app/views/home/sample_page.dart';
import 'package:invest_app/views/home/search_product.dart';
import 'package:invest_app/views/home/transaction/transaction.view.dart';
import 'package:invest_app/views/profile/contact_info.dart';
import 'package:invest_app/views/profile/profile.dart';

TextStyle headTitleStyle(double size, {Color? color}) {
  return TextStyle(
    fontFamily: "DMSANS",
    fontSize: size,
    fontWeight: FontWeight.w700,
    color: color,
  );
}

TextStyle contentStyle = const TextStyle(
  fontFamily: "SFPROTEXT",
  fontWeight: FontWeight.w600,
  fontSize: 17.0,
);

TextStyle textButtonStyle = const TextStyle(
  fontFamily: "SFPROTEXT",
  fontWeight: FontWeight.w600,
  fontSize: 12.0,
  color: Color(0xff31A062),
);

List<PlanModel> plans = const [
  PlanModel(
    usdImage: "assets/imgs/gold.png",
    name: "Gold",
    color1: Color(0xffF0C735),
    color2: Color(0xffD98F39),
    nb: 30,
  ),
  PlanModel(
    usdImage: "assets/imgs/silver.png",
    name: "Silver",
    color1: Color(0xffCAC9C9),
    color2: Color(0xff979797),
    nb: 60,
  ),
  PlanModel(
    usdImage: "assets/imgs/platnium.png",
    name: "Platinum",
    color1: Color(0xffBA8DF3),
    color2: Color(0xff615EE2),
    nb: 90,
  ),
];

List<Widget> bodyItems = [
  const Main(),
  const SearchBar(),
  const TransactionView(),
  const Profile(),
];

TextStyle descriptionStyle = const TextStyle(
  fontFamily: "SFPRODISPLAY",
  fontWeight: FontWeight.w400,
  fontSize: 14.0,
  color: Color(0xffB2B2B2),
);

List<HistoryModel> histories = [
  HistoryModel(
    title: "Rp 200.000",
    description: "Buy “APPL” Stock",
    color: Colors.black,
  ),
  HistoryModel(
    title: "Rp 150.000",
    description: "Sell “TLKM” Stock",
    color: const Color(0xff00B907),
  ),
  HistoryModel(
    title: "Rp 1.000.240",
    description: "Buy “FB” Stock",
    color: Colors.black,
  ),
  HistoryModel(
    title: "Rp 1.000.240",
    description: "Sell “APPL” Stock",
    color: const Color(0xff00B907),
  ),
];

List<UserData> datas = [
  UserData(
    icon: "assets/imgs/icons/contact.svg",
    content: "Contact Info",
    routeName: ContactInfo.name,
  ),
  UserData(
    icon: "assets/imgs/icons/funding.svg",
    content: "Source of Funding Info",
    routeName: SamplaPage.name,
  ),
  UserData(
    icon: "assets/imgs/icons/bank.svg",
    content: "Bank Account Info",
    routeName: BankAccount.name,
  ),
  UserData(
    icon: "assets/imgs/icons/doc.svg",
    content: "Document Info",
    routeName: SamplaPage.name,
  ),
  UserData(
    icon: "assets/imgs/icons/setting.svg",
    content: "Settings",
    routeName: SamplaPage.name,
  ),
];

List<UserData> userDatas = [
  UserData(icon: "Name", content: "Warren Buffet"),
  UserData(icon: "Birthdate", content: "05 November 1993"),
  UserData(icon: "Gender", content: "Male"),
  UserData(icon: "Email", content: "warren.buff@invest.ai"),
  UserData(icon: "Phone Number", content: "+229 67558797"),
  UserData(icon: "Address", content: "Cotonou Midombo"),
];

List<NotifModel> notifs = [
  NotifModel(
      urlImage: "assets/imgs/firstImg.png",
      content: "Apple stocks just increased \nCheck it out now.",
      dateNotif: "15min ago"),
  NotifModel(
      urlImage: "assets/imgs/secondImgs.png",
      content: "Check out today’s best inves-\ntor. You’ll learn from him",
      dateNotif: "3min ago"),
  NotifModel(
      urlImage: "assets/imgs/threeimgs.png",
      content: "Where do you see yourself\nin the next ages.",
      dateNotif: "30secs ago"),
];

List<BankModel> accounts = [
  BankModel(
    img: "assets/imgs/account1.png",
    title: "Bank of Amrica - 0182128xxx",
    subTitle: "Jonas Macroni",
  ),
  BankModel(
    img: "assets/imgs/account2.png",
    title: "Zenith Bank - 0182128xxx",
    subTitle: "Jonas Macroni",
  ),
];
