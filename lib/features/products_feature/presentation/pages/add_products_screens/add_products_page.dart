import 'package:ecommerce_admin_panel/features/app_feature/global/layouts/templates/site_layout.dart';
import 'package:ecommerce_admin_panel/features/products_feature/presentation/pages/add_products_screens/responsive_screens/add_products_mobile.dart';
import 'package:flutter/material.dart';
import '../../../../../main.dart';
import '../../../../app_feature/const/sharedkeys.dart';
import 'responsive_screens/add_products_desktop.dart';

class AddProductsPage extends StatefulWidget {
  const AddProductsPage({
    super.key,
  });

  @override
  State<AddProductsPage> createState() => _AddProductsPageState();
}

class _AddProductsPageState extends State<AddProductsPage> {
  @override
  Widget build(BuildContext context) {
    return SiteLayout(
      currentIndex:
          sharedPreferences.getInt(AppSharedKeys.currentDrawerIndex) ?? 0,
      desktopLayout: const AddProductsDesktop(),
      mobileLayout: const AddProductsMobile(),
    );
  }
}
