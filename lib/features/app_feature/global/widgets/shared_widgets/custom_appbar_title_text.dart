import 'package:flutter/material.dart';

import '../../../const/appcolor.dart';

class CustomAppbarTitleText extends StatelessWidget {
  final String? data;
  const CustomAppbarTitleText({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Text(
      data ?? "",
      style: const TextStyle(
          fontWeight: FontWeight.w700, fontSize: 24, color: AppColor.black),
    );
  }
}
