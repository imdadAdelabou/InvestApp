import "package:flutter/material.dart";

class SamplaPage extends StatelessWidget {
  static const name = "/sample";
  const SamplaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Text("Sample page"),
      ),
    );
  }
}
