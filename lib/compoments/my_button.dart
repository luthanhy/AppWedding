import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final VoidCallback onPressed;
  final Color? backgroundColor; // Màu nền
  final Color? textColor;       // Màu chữ

  const MyButton({
    Key? key,
    required this.text,
    this.icon,
    required this.onPressed,
    this.backgroundColor, // Có thể null
    this.textColor,       // Có thể null
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? Colors.grey.withOpacity(0.3),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 35),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null)
            Icon(
              icon,
              color: textColor ?? Colors.white,
              size: 30,
            ),
          if (icon != null) const SizedBox(width: 8),
          Text(
            text,
            style: TextStyle(
              color: textColor ?? Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
