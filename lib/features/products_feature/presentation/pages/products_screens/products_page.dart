import 'package:ecommerce_admin_panel/features/app_feature/global/layouts/templates/site_layout.dart';
import 'package:ecommerce_admin_panel/features/products_feature/presentation/cubit/products/products_view_all_cubit.dart';
import 'package:ecommerce_admin_panel/features/products_feature/presentation/pages/products_screens/responsive_screens/products_desktop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsPage extends StatefulWidget {
  final int currentIndex;
  const ProductsPage({super.key, required this.currentIndex});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  void initState() {
    BlocProvider.of<ProductsViewAllCubit>(context).getAllProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SiteLayout(
      currentIndex: widget.currentIndex,
      desktopLayout: const ProductsDesktop(),
    );
  }
}
