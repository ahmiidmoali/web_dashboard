import 'package:ecommerce_admin_panel/features/app_feature/const/appcolor.dart';
import 'package:ecommerce_admin_panel/features/app_feature/const/image_assets.dart';
import 'package:ecommerce_admin_panel/features/app_feature/global/widgets/shared_widgets/custom_body_text.dart';

import 'package:ecommerce_admin_panel/features/app_feature/global/widgets/shared_widgets/custom_confirm_button.dart';
import 'package:ecommerce_admin_panel/features/app_feature/global/widgets/shared_widgets/custom_sub_title_text.dart';
import 'package:ecommerce_admin_panel/features/app_feature/global/widgets/shared_widgets/custom_title_text.dart';

import 'package:flutter/material.dart';

import '../../../../../app_feature/global/widgets/shared_widgets/custom_product_text_field.dart';
import '../../../../../app_feature/global/widgets/shared_widgets/icon_with_border.dart';

class CustomMainAddCategories extends StatelessWidget {
  const CustomMainAddCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColor.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomTitleText(data: "Products 5"),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) => Container(
                    padding: const EdgeInsets.all(3),
                    margin: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.white,
                        border: Border.all(color: AppColor.grey)),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_vert)),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                            width: 50,
                            height: 50,
                            child:
                                Image.asset(AppImageAssetConsts.tryingImages)),
                        const SizedBox(
                          width: 10,
                        ),
                        const CustomBodyText(data: "Product Name")
                      ],
                    ),
                  )),
          CustomConfirmButton(
            text: " + Add product",
            onPressed: () {},
            width: double.infinity,
            color: AppColor.white,
          )
        ],
      ),
    );
  }
}
