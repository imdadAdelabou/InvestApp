import "package:flutter/material.dart";

class CustomTextField extends StatelessWidget {
  final String hinText;
  const CustomTextField({
    Key? key,
    required this.hinText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          hintText: hinText,
          hintStyle: const TextStyle(
            fontFamily: "SFPROTEXT",
            fontWeight: FontWeight.w400,
            fontSize: 17.0,
          ),
        ),
      ),
    );
  }
}
