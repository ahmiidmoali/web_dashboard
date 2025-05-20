import 'package:ecommerce_admin_panel/features/app_feature/const/appcolor.dart';
import 'package:ecommerce_admin_panel/features/app_feature/const/routes.dart';
import 'package:ecommerce_admin_panel/features/app_feature/const/sharedkeys.dart';
import 'package:ecommerce_admin_panel/main.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final int currentIndex;
  const CustomDrawer({super.key, this.currentIndex = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: AppColor.primary,
      child: ListView(
        children: [
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: drawerItems.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  sharedPreferences.setInt(
                      AppSharedKeys.currentDrawerIndex, index);

                  Navigator.pushNamedAndRemoveUntil(
                      context, drawerItems[index].routeName, (route) => false,
                      arguments: index);
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: index == currentIndex
                          ? AppColor.white
                          : AppColor.primary,
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      Icon(
                        drawerItems[index].icon,
                        color: index == currentIndex
                            ? AppColor.primary
                            : AppColor.white,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(drawerItems[index].title)
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

//Dashboard -   Products -    Orders -    Categories -    Customers -    Reports -    Coupons -    inbox
List<CustomDrawerItem> drawerItems = [
  const CustomDrawerItem(
      title: "Dashboard", icon: Icons.dashboard, routeName: AppRoute.dashboard),
  const CustomDrawerItem(
      title: "Products", icon: Icons.discount, routeName: AppRoute.products),
  const CustomDrawerItem(
      title: "Orders", icon: Icons.list, routeName: AppRoute.orders),
  const CustomDrawerItem(
      title: "Categories", icon: Icons.folder, routeName: AppRoute.categories),
  const CustomDrawerItem(
      title: "Customers", icon: Icons.people, routeName: AppRoute.customers),
  const CustomDrawerItem(
      title: "Reports", icon: Icons.bar_chart, routeName: AppRoute.reports),
  const CustomDrawerItem(
      title: "Coupons", icon: Icons.star, routeName: AppRoute.coupons),
  const CustomDrawerItem(
      title: "inbox", icon: Icons.chat, routeName: AppRoute.inbox),
];

class CustomDrawerItem {
  final String title;
  final String routeName;
  final IconData icon;
  const CustomDrawerItem({
    required this.title,
    required this.icon,
    required this.routeName,
  });
}
