import 'package:ecommerce_admin_panel/features/app_feature/const/appcolor.dart';
import 'package:ecommerce_admin_panel/features/app_feature/global/widgets/navigator_utils.dart';
import 'package:ecommerce_admin_panel/features/app_feature/global/widgets/shared_widgets/custom_appbar_title_text.dart';
import 'package:ecommerce_admin_panel/features/app_feature/global/widgets/shared_widgets/custom_confirm_button.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_main_add_products.dart';
import '../widgets/custom_secondary_add_products.dart';

class AddProductsDesktop extends StatefulWidget {
  const AddProductsDesktop({super.key});

  @override
  State<AddProductsDesktop> createState() => _AddProductsDesktopState();
}

class _AddProductsDesktopState extends State<AddProductsDesktop> {
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
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 5,
              child: CustomMainAddProducts(),
            ),
            Expanded(flex: 2, child: CustomSecondaryAddProducts())
          ],
        ),
      ),
    );
  }
}
