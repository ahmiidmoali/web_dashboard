import 'package:ecommerce_admin_panel/features/app_feature/const/appcolor.dart';
import 'package:ecommerce_admin_panel/features/app_feature/global/layouts/templates/site_layout.dart';
import 'package:ecommerce_admin_panel/features/home_feature/presentation/dashboard_screens/responstive_screens/dashboard_desktop.dart';
import 'package:ecommerce_admin_panel/features/home_feature/presentation/dashboard_screens/responstive_screens/dashboard_mobile.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  final int currentIndex;
  const DashboardPage({super.key, required this.currentIndex});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return SiteLayout(
      desktopLayout: DashboardDesktop(),
      mobileLayout: DashboardMobile(),
      currentIndex: widget.currentIndex,
    );
  }
}
