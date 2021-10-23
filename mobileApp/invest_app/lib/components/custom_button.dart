import "package:flutter/material.dart";

class CustomButton extends StatelessWidget {
  final Function() action;
  final Widget content;
  const CustomButton({
    Key? key,
    required this.action,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        onPressed: action,
        child: content,
        style: ElevatedButton.styleFrom(
          primary: const Color(0xff31A062),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
    );
  }
}
