import 'package:flutter/material.dart';

class CustomSubTitleText extends StatelessWidget {
  final String? data;
  const CustomSubTitleText({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Text(
      data ?? "",
      style: const TextStyle(
          fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF5A607F)),
    );
  }
}
