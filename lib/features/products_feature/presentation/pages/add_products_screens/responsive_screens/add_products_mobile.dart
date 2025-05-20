import 'package:ecommerce_admin_panel/features/app_feature/const/appcolor.dart';
import 'package:ecommerce_admin_panel/features/app_feature/global/widgets/navigator_utils.dart';
import 'package:ecommerce_admin_panel/features/app_feature/global/widgets/shared_widgets/custom_appbar_title_text.dart';
import 'package:ecommerce_admin_panel/features/app_feature/global/widgets/shared_widgets/custom_confirm_button.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_main_add_products.dart';
import '../widgets/custom_secondary_add_products.dart';

class AddProductsMobile extends StatefulWidget {
  const AddProductsMobile({super.key});

  @override
  State<AddProductsMobile> createState() => _AddProductsMobileState();
}

class _AddProductsMobileState extends State<AddProductsMobile> {
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
            CustomSecondaryAddProducts(),
            CustomMainAddProducts(),
          ],
        ),
      ),
    );
  }
}
