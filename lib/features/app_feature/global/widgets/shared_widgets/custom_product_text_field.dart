import 'package:flutter/material.dart';

import '../../../const/appcolor.dart';

class CustomProductsTextField extends StatelessWidget {
  final String? hitText;
  final int? maxLines;
  final int? minLines;
  final double? sizedBoxHight;
  final double? sizedBoxWidth;

  const CustomProductsTextField({
    super.key,
    this.hitText,
    this.maxLines,
    this.minLines,
    this.sizedBoxHight,
    this.sizedBoxWidth,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sizedBoxWidth,
      height: sizedBoxHight ?? 40,
      child: TextField(
          maxLines: maxLines ?? 1,
          minLines: minLines ?? 1,
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: hitText ?? "",
              hintStyle: const TextStyle(
                  color: AppColor.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 16))),
    );
  }
}
