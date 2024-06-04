import 'package:flutter/material.dart';

class CustomSmallButton extends StatelessWidget {
  const CustomSmallButton({super.key,
    required this.label,
    required this.textColor,
    required this.buttonColor,
    this.onPressed
});

  final String label;
  final Color textColor;
  final Color buttonColor;
  final VoidCallback? onPressed;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.only(left: 16,bottom: 8),
        alignment: Alignment.bottomLeft,
        width: 132,
        height: 40,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
