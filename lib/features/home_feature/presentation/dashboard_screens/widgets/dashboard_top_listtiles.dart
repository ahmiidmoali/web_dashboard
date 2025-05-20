import 'package:flutter/material.dart';

import '../../../../app_feature/const/appcolor.dart';

class DashboardTopListTiles extends StatelessWidget {
  const DashboardTopListTiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      // scrollDirection: Axis.horizontal,
      // physics: AlwaysScrollableScrollPhysics(),
      // shrinkWrap: true,
      children: [
        CustomCashboardTopListile(
            title1: "10.54 dollars",
            title2: "Total Revenue",
            title3: "10 %",
            icon: Icons.arrow_drop_down),
        CustomCashboardTopListile(
            title1: "10.54 dollars",
            title2: "Total Revenue",
            title3: "10 %",
            icon: Icons.arrow_drop_down),
        CustomCashboardTopListile(
            title1: "10.54 dollars",
            title2: "Total Revenue",
            title3: "10 %",
            icon: Icons.arrow_drop_down),
        CustomCashboardTopListile(
            title1: "10.54 dollars",
            title2: "Total Revenue",
            title3: "10 %",
            icon: Icons.arrow_drop_down),
      ],
    );
  }
}

class CustomCashboardTopListile extends StatelessWidget {
  final String title1;
  final String title2;
  final String title3;
  final IconData icon;
  const CustomCashboardTopListile({
    super.key,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      padding: const EdgeInsets.all(15),
      alignment: Alignment.center,
      width: 270,
      decoration: BoxDecoration(
          border: Border.all(),
          color: AppColor.white,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(children: [
            Text(title1),
            Text(title2),
            Row(
              children: [Text(title2), Icon(icon)],
            ),
          ]),
          const SizedBox(
            width: 40,
          ),
          Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(50)),
              child: const Icon(Icons.arrow_drop_down))
        ],
      ),
    );
  }
}
