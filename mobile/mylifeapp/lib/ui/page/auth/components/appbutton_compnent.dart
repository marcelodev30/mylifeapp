import 'package:flutter/material.dart';

class AppButtonAuth extends StatelessWidget {
  final Widget text;
  final Color color;
  final void Function() onPressed;
  const AppButtonAuth({
    super.key,
    required this.text,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 25,
      height: 48,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              side: BorderSide(color: Colors.black, width: 2),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          backgroundColor: WidgetStatePropertyAll(color),
        ),
        child: text,
      ),
    );
  }
}
