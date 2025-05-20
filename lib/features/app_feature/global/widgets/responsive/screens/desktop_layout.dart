import 'package:ecommerce_admin_panel/features/app_feature/const/appcolor.dart';
import 'package:ecommerce_admin_panel/features/app_feature/global/layouts/drawer/custom_drawer.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  final Widget? body;
  final int? currentIndex;
  const DesktopLayout({super.key, this.body, this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: Column(children: [
        Container(
          height: 100,
          width: double.infinity,
          color: AppColor.primary,
        ),
        Expanded(
          child: Row(children: [
            CustomDrawer(
              currentIndex: currentIndex ?? 0,
            ),
            Expanded(flex: 5, child: body ?? const SizedBox()),
          ]),
        )
      ]),
    );
  }
}
