import 'package:flutter/material.dart';
import 'package:invest_app/onboarding.dart';
import 'package:invest_app/splash_screen.dart';
import 'package:invest_app/views/home/home.view.dart';
import 'package:invest_app/views/login/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        OnBoarding.name: (context) => const OnBoarding(),
        SignUpView.name: (context) => const SignUpView(),
        HomeView.name: (context) => const HomeView(),
      },
    );
  }
}
