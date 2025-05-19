import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final bool obscureText;
  final Color labelColor;
  final Color textColor;
  final Color underlineColor;
  final double? width;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final void Function(String)? onSubmitted;

  const CustomTextField({
    super.key,
    required this.label,
    this.obscureText = false,
    this.labelColor = const Color(0xFFCCCCCC),
    this.textColor = Colors.black,
    this.underlineColor = const Color(0xFFCCCCCC),
    this.width = 308.01,
    this.focusNode,
    this.textInputAction,
    this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: TextField(
        obscureText: obscureText,
        focusNode: focusNode,
        textInputAction: textInputAction,
        onSubmitted: onSubmitted,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: labelColor),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: underlineColor),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: underlineColor),
          ),
        ),
        style: TextStyle(color: textColor),
      ),
    );
  }
}
