import 'package:flutter/material.dart';

class ExampleButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color color;
  const ExampleButton(
      {Key? key, required this.text, this.onPressed, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        alignment: Alignment.center,
        width: 200,
        height: 60,
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
