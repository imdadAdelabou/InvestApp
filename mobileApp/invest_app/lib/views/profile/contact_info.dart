import "package:flutter/material.dart";
import 'package:invest_app/components/print_data.dart';
import 'package:invest_app/utils/constants.dart';

class ContactInfo extends StatelessWidget {
  static const name = "/contact-info";
  const ContactInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: const Center(
              child: Icon(
                Icons.chevron_left,
                color: Colors.black,
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "Contact info",
            style: headTitleStyle(17.0, color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Column(
            children: [
              Center(
                child: CircleAvatar(
                  radius: 60.0,
                  backgroundColor: Colors.white,
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/imgs/Ellipse 741.png",
                        fit: BoxFit.cover,
                      ),
                      Opacity(
                        opacity: 0.3,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      const Center(
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              ...List.generate(
                userDatas.length,
                (index) => PrintData(
                    head: userDatas[index].icon,
                    content: userDatas[index].content),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
