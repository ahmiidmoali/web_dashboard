import 'package:ecommerce_admin_panel/features/app_feature/const/appcolor.dart';

import 'package:ecommerce_admin_panel/features/app_feature/global/widgets/shared_widgets/custom_title_text.dart';

import 'package:flutter/material.dart';

import '../../../../../app_feature/global/widgets/shared_widgets/custom_product_text_field.dart';

class CustomSecondaryAddProducts extends StatelessWidget {
  const CustomSecondaryAddProducts({
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
                const CustomTitleText(data: "Categories"),
                Container(
                  height: 0,
                ),
                Wrap(children: [
                  ...List.generate(
                    11,
                    (index) => SizedBox(
                      width: 150,
                      height: 40,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (value) {},
                          ),
                          const Text("Category Name")
                        ],
                      ),
                    ),
                  )
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
                  const CustomTitleText(data: "Tags"),
                  const CustomProductsTextField(
                    hitText: "Enter tag name",
                  ),
                  Wrap(children: [
                    ...List.generate(
                      3,
                      (index) => Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColor.grey),
                            borderRadius: BorderRadius.circular(5)),
                        height: 40,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Tag Name",
                              style: TextStyle(height: 2.5),
                              textAlign: TextAlign.center,
                              maxLines: 1,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.close),
                            )
                          ],
                        ),
                      ),
                    )
                  ]),
                ],
              )),
        ],
      ),
    );
  }
}
