import 'package:ecommerce_admin_panel/features/home_feature/presentation/dashboard_screens/widgets/dashboard_chart.dart';
import 'package:ecommerce_admin_panel/features/home_feature/presentation/dashboard_screens/widgets/dashboard_top_listtiles.dart';
import 'package:flutter/material.dart';

class DashboardMobile extends StatelessWidget {
  const DashboardMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: ListView(
        children: const [
          Text("Dashboard"),
          // top listiles ...........
          DashboardTopListTiles(),
          DashboardChart(),
          DashboardChart(), DashboardChart(), DashboardChart()
        ],
      ),
    );
  }
}
