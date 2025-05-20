// import 'package:data_table_2/data_table_2.dart';
// import 'package:dropdown_search/dropdown_search.dart';
import 'package:ecommerce_admin_panel/features/app_feature/const/appcolor.dart';
<<<<<<< HEAD

import 'package:ecommerce_admin_panel/features/app_feature/device/device_utility.dart';
import 'package:ecommerce_admin_panel/features/app_feature/global/widgets/custom_network_image.dart';

import 'package:ecommerce_admin_panel/features/app_feature/global/widgets/shared_widgets/custom_appbar_title_text.dart';
import 'package:ecommerce_admin_panel/features/products_feature/domain/entities/categories_entity.dart';
import 'package:ecommerce_admin_panel/features/products_feature/presentation/cubit/categories/categories_view/categories_view_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
=======
import 'package:ecommerce_admin_panel/features/app_feature/const/image_assets.dart';
import 'package:ecommerce_admin_panel/features/app_feature/device/device_utility.dart';
import 'package:ecommerce_admin_panel/features/app_feature/global/widgets/custom_network_image.dart';
import 'package:ecommerce_admin_panel/features/app_feature/global/widgets/shared_widgets/custom_appbar_title_text.dart';
import 'package:ecommerce_admin_panel/features/products_feature/presentation/cubit/products/products_view_all_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

>>>>>>> 673f3afc5aea4de5bfbe8339253e2c72c5f129ab
import '../../../../../../linkapi.dart';
import '../../../../../app_feature/const/routes.dart';
import '../../../../../app_feature/global/widgets/shared_widgets/custom_confirm_button.dart';
import '../../../../domain/entities/items_entity.dart';

class CategoriesDesktop extends StatelessWidget {
  const CategoriesDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: CustomAppbarTitleText(data: "Categories"),
        actions: [
          CustomConfirmButton(
            fontSize: AppDeviceUtils.isMobileScreen(context) ? 12 : null,
            width: AppDeviceUtils.isMobileScreen(context) ? 100 : 150,
            text: "+ Add Category",
            onPressed: () {
              Navigator.pushNamed(context, AppRoute.addCategories);
            },
          )
        ],
      ),
<<<<<<< HEAD
      body: BlocBuilder<CategoriesViewCubit, CategoriesViewState>(
        builder: (context, state) {
          if (state is CategoriesViewLoaded) {
            final categories = state.categories;
            return CustomCategoriesDesignView(
              categories: categories,
=======
      body: BlocBuilder<ProductsViewAllCubit, ProductsViewAllState>(
        builder: (context, state) {
          if (state is ProductsViewAllLoaded) {
            final items = state.items;
            return CustomCategoriesDesignView(
              items: items,
>>>>>>> 673f3afc5aea4de5bfbe8339253e2c72c5f129ab
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}

class CustomCategoriesDesignView extends StatelessWidget {
<<<<<<< HEAD
  final List<CategoriesEntity> categories;
  const CustomCategoriesDesignView({
    super.key,
    required this.categories,
=======
  final List<ItemsEntity> items;
  const CustomCategoriesDesignView({
    super.key,
    required this.items,
>>>>>>> 673f3afc5aea4de5bfbe8339253e2c72c5f129ab
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: GridView.builder(
<<<<<<< HEAD
        itemCount: categories.length,
=======
        itemCount: 10,
>>>>>>> 673f3afc5aea4de5bfbe8339253e2c72c5f129ab
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: AppDeviceUtils.isDesktopScreen(context)
                ? 5
                : AppDeviceUtils.isBigTabletScreen(context)
                    ? 5
                    : AppDeviceUtils.isMobileScreen(context)
                        ? 3
                        : 4,
            childAspectRatio: 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
<<<<<<< HEAD
                  child: SizedBox(
                      child: CustomNetworkImage(
                          imageUrl:
                              "${AppLink.imagecategories}/${categories[index].categoriesImage}")),
=======
                  child: CustomNetworkImage(
                      imageUrl:
                          "${AppLink.imageitems}/${items[index].itemsImage}"),
>>>>>>> 673f3afc5aea4de5bfbe8339253e2c72c5f129ab
                ),
                const SizedBox(
                  height: 10,
                ),
<<<<<<< HEAD
                Text("${categories[index].categoriesName}",
=======
                const Text("Category Name",
                    style: TextStyle(color: AppColor.primary)),
                const Text("10 Products",
>>>>>>> 673f3afc5aea4de5bfbe8339253e2c72c5f129ab
                    style: TextStyle(color: AppColor.primary)),
              ],
            ),
          );
        },
      ),
    );
  }
}
