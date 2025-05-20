import 'package:flutter/material.dart';

import '../../../layouts/drawer/custom_drawer.dart';

class MobileLayout extends StatelessWidget {
  final Widget? body;
  final int? currentIndex;
  const MobileLayout({super.key, this.body, this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(
        currentIndex: currentIndex ?? 0,
      ),
      appBar: AppBar(),
      body: body ?? const SizedBox(),
    );
  }
}
