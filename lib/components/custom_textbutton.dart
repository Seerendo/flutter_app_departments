import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final Color? backgroundColor;

  final Color? overlayColor;
  final Function() function;
  final Widget child;
  final double width;
  final double height;
  const CustomTextButton(
      {super.key,
      this.backgroundColor,
      required this.function,
      required this.width,
      required this.height,
      this.overlayColor,
      required this.child});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        minimumSize: MaterialStatePropertyAll(Size(width, height)),
        backgroundColor: MaterialStatePropertyAll(backgroundColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        overlayColor: const MaterialStatePropertyAll(Colors.indigoAccent),
      ),
      onPressed: function,
      child: child,
    );
  }
}
