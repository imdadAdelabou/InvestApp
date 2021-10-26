import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:invest_app/utils/constants.dart';
import 'package:invest_app/views/notification/notification.dart';

class HomeView extends StatefulWidget {
  static const String name = "/home";
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 0;
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
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(NotificationView.name);
                },
                child: const Icon(
                  FontAwesomeIcons.bell,
                  color: Colors.black,
                ),
              ),
            ),
          ],
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: bodyItems[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int value) {
            setState(() {
              _currentIndex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          selectedItemColor: const Color(0xff31A063),
          selectedLabelStyle: const TextStyle(
            fontFamily: "DMSANS",
          ),
          unselectedLabelStyle: const TextStyle(
            fontFamily: "DMSANS",
            color: Colors.grey,
          ),
          items: [
            const BottomNavigationBarItem(
              label: "home",
              icon: Icon(Icons.home_filled),
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Product",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/imgs/Shape.png",
                color: _currentIndex == 2 ? const Color(0xff31A063) : null,
              ),
              label: "Transaction",
            ),
            const BottomNavigationBarItem(
              label: "Account",
              icon: Icon(FontAwesomeIcons.user),
            )
          ],
        ),
      ),
    );
  }
}
