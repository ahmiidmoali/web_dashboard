import 'package:flutter/material.dart';

import '../../../const/appcolor.dart';

class CustomTitleText extends StatelessWidget {
  final String? data;
  const CustomTitleText({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Text(
      data ?? "",
      style: const TextStyle(
          fontWeight: FontWeight.w700, fontSize: 16, color: AppColor.black),
    );
  }
}
