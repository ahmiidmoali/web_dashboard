import 'package:ecommerce_admin_panel/features/app_feature/const/appcolor.dart';
import 'package:flutter/material.dart';

class CustomConfirmButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? text;
  final Color? color;
  final double? width;
  final double? height;
  final double? fontSize;
  const CustomConfirmButton(
      {super.key,
      this.onPressed,
      this.text,
      this.color,
      this.width,
      this.height,
      this.fontSize});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Container(
          decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(10),
              color: color ?? AppColor.primary),
          alignment: Alignment.center,
          width: width ?? 86,
          height: height ?? 40,
          child: Text(
            text ?? "Confirm",
            style: TextStyle(
                color: color != null ? AppColor.primary : AppColor.white,
                fontSize: fontSize ?? 16,
                fontWeight: FontWeight.w400),
          )),
    );
  }
}
