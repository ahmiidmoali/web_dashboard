import 'package:flutter/material.dart';

class IconWithBorder extends StatelessWidget {
  final IconData icon;
  final void Function() onPressed;
  const IconWithBorder(
      {super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
