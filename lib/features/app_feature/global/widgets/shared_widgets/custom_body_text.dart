import 'package:flutter/material.dart';

import '../../../const/appcolor.dart';

class CustomBodyText extends StatelessWidget {
  final String? data;
  const CustomBodyText({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Text(
      data ?? "",
      style: const TextStyle(
          fontWeight: FontWeight.w400, fontSize: 16, color: AppColor.black),
    );
  }
}
