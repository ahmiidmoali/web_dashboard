import 'package:ecommerce_admin_panel/features/app_feature/global/layouts/templates/site_layout.dart';
import 'package:ecommerce_admin_panel/main.dart';
import 'package:flutter/material.dart';
import '../../../../app_feature/const/sharedkeys.dart';
import 'responsive_screens/add_categories_desktop.dart';
import 'responsive_screens/add_categories_mobile.dart';

class AddCategoriesPage extends StatefulWidget {
  const AddCategoriesPage({
    super.key,
  });

  @override
  State<AddCategoriesPage> createState() => _AddCategoriesPageState();
}

class _AddCategoriesPageState extends State<AddCategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return SiteLayout(
      currentIndex:
          sharedPreferences.getInt(AppSharedKeys.currentDrawerIndex) ?? 0,
      desktopLayout: const AddCategoriesDesktop(),
      mobileLayout: const AddCategoriesMobile(),
    );
  }
}
