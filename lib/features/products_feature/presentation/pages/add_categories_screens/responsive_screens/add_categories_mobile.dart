import 'package:ecommerce_admin_panel/features/app_feature/const/appcolor.dart';
import 'package:ecommerce_admin_panel/features/app_feature/global/widgets/navigator_utils.dart';
import 'package:ecommerce_admin_panel/features/app_feature/global/widgets/shared_widgets/custom_appbar_title_text.dart';
import 'package:ecommerce_admin_panel/features/app_feature/global/widgets/shared_widgets/custom_confirm_button.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_main_add_categories.dart';
import '../widgets/custom_secondary_add_categories.dart';

class AddCategoriesMobile extends StatefulWidget {
  const AddCategoriesMobile({super.key});

  @override
  State<AddCategoriesMobile> createState() => _AddCategoriesMobileState();
}

class _AddCategoriesMobileState extends State<AddCategoriesMobile> {
  late TextEditingController searchController;

  @override
  void initState() {
    searchController = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const CustomAppbarTitleText(data: "Add Product"),
          actions: [
            CustomConfirmButton(
              onPressed: () {
                pop(context);
              },
              color: AppColor.white,
              text: "Cancle",
            ),
            CustomConfirmButton(
              onPressed: () {},
              text: "Save",
            )
          ]),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSecondaryAddCategories(),
            CustomMainAddCategories(),
          ],
        ),
      ),
    );
  }
}
