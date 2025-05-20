import 'package:ecommerce_admin_panel/features/app_feature/const/appcolor.dart';
import 'package:ecommerce_admin_panel/features/app_feature/global/widgets/shared_widgets/custom_body_text.dart';

import 'package:ecommerce_admin_panel/features/app_feature/global/widgets/shared_widgets/custom_title_text.dart';

import 'package:flutter/material.dart';

import '../../../../../app_feature/global/widgets/shared_widgets/custom_confirm_button.dart';
import '../../../../../app_feature/global/widgets/shared_widgets/custom_product_text_field.dart';

class CustomSecondaryAddCategories extends StatelessWidget {
  const CustomSecondaryAddCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColor.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomTitleText(data: "Category visibility"),
                Container(
                  height: 0,
                ),
                Row(children: [
                  Switch(
                    value: false,
                    onChanged: (value) {},
                  ),
                  CustomBodyText(data: "Visible on Site")
                ]),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomTitleText(data: "Catrgory Info"),
                  const CustomProductsTextField(
                    hitText: "Category Name",
                  ),
                  const CustomTitleText(data: "Image"),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 100,
                          color: Colors.grey,
                          child: const Text("no Image"),
                        ),
                        const SizedBox(width: 20),
                        CustomConfirmButton(onPressed: () {}, text: "Add File"),
                      ],
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
