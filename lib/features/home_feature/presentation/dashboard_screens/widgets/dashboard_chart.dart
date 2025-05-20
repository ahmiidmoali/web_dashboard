import 'package:ecommerce_admin_panel/features/app_feature/const/appcolor.dart';
import 'package:flutter/material.dart';

class DashboardChart extends StatelessWidget {
  const DashboardChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      padding: const EdgeInsets.all(15),
      alignment: Alignment.center,
      height: 450,
      decoration: BoxDecoration(
          border: Border.all(),
          color: AppColor.white,
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
