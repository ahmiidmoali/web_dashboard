import 'package:ecommerce_admin_panel/features/products_feature/presentation/pages/products_screens/widgets/custom_search/choose_widget.dart';
import 'package:flutter/material.dart';

import 'features/products_feature/presentation/pages/products_screens/widgets/custom_search/filter_screen.dart';

class TrialPage extends StatelessWidget {
  const TrialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          child: SizedBox(width: 300, child: FilterScreen())),
    );
  }
}
