import 'package:ecommerce_admin_panel/features/app_feature/global/layouts/drawer/custom_drawer.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  final Widget? body;
  final int? currentIndex;
  const TabletLayout({super.key, this.body, this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(
        currentIndex: currentIndex ?? 0,
      ),
      appBar: AppBar(),
      body: body ?? Container(),
    );
  }
}
