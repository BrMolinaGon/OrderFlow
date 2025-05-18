import 'package:flutter/material.dart';

class RedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const RedButton({Key? key, required this.text, required this.onPressed})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 308,
        height: 58,
        decoration: ShapeDecoration(
          color: const Color(0xFFA82A30),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
