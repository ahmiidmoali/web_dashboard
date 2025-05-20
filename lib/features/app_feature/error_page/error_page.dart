import 'package:ecommerce_admin_panel/features/app_feature/global/layouts/templates/site_layout.dart';
import 'package:ecommerce_admin_panel/main.dart';
import 'package:flutter/material.dart';

import '../const/sharedkeys.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SiteLayout(
      currentIndex:
          sharedPreferences.getInt(AppSharedKeys.currentDrawerIndex) ?? 0,
      desktopLayout: const ErrorPageDesktop(),
    );
  }
}

class ErrorPageDesktop extends StatelessWidget {
  const ErrorPageDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Error"),
      ),
      body: const Center(
        child: Text("Error"),
      ),
    );
  }
}
