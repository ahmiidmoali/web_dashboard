import 'package:ecommerce_admin_panel/features/app_feature/global/layouts/templates/site_layout.dart';
<<<<<<< HEAD
import 'package:ecommerce_admin_panel/features/products_feature/presentation/cubit/categories/categories_view/categories_view_cubit.dart';
=======
>>>>>>> 673f3afc5aea4de5bfbe8339253e2c72c5f129ab
import 'package:ecommerce_admin_panel/features/products_feature/presentation/cubit/products/products_view_all_cubit.dart';
import 'package:ecommerce_admin_panel/features/products_feature/presentation/pages/categories_screens/responsive_screens/categories_desktop.dart';
import 'package:ecommerce_admin_panel/features/products_feature/presentation/pages/products_screens/responsive_screens/products_desktop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesPage extends StatefulWidget {
  final int currentIndex;
  const CategoriesPage({super.key, required this.currentIndex});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  void initState() {
<<<<<<< HEAD
    BlocProvider.of<CategoriesViewCubit>(context).getAllCategories();
=======
    BlocProvider.of<ProductsViewAllCubit>(context).getAllProducts();
>>>>>>> 673f3afc5aea4de5bfbe8339253e2c72c5f129ab
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SiteLayout(
      currentIndex: widget.currentIndex,
      desktopLayout: CategoriesDesktop(),
    );
  }
}
