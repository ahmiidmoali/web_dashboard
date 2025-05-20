import 'package:ecommerce_admin_panel/features/app_feature/const/appcolor.dart';
import 'package:ecommerce_admin_panel/features/home_feature/presentation/dashboard_screens/widgets/dashboard_top_listtiles.dart';
import 'package:flutter/material.dart';

import '../widgets/dashboard_chart.dart';

class DashboardDesktop extends StatelessWidget {
  const DashboardDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: ListView(
        children: const [
          Text("Dashboard"),
          // top listiles ...........
          DashboardTopListTiles(),
          Row(children: const [
            Expanded(flex: 2, child: DashboardChart()),
            Expanded(child: DashboardChart())
          ]),
          Row(children: [
            Expanded(child: DashboardChart()),
            Expanded(child: DashboardChart())
          ])
        ],
      ),
    );
  }
}
