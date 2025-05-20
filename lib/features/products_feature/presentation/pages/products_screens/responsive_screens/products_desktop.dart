// import 'package:data_table_2/data_table_2.dart';
// import 'package:dropdown_search/dropdown_search.dart';
import 'package:ecommerce_admin_panel/features/app_feature/const/appcolor.dart';
import 'package:ecommerce_admin_panel/features/app_feature/const/routes.dart';
import 'package:ecommerce_admin_panel/features/app_feature/global/widgets/custom_network_image.dart';
import 'package:ecommerce_admin_panel/features/app_feature/global/widgets/global_loading_screen.dart';
import 'package:ecommerce_admin_panel/features/app_feature/global/widgets/shared_widgets/custom_confirm_button.dart';
import 'package:ecommerce_admin_panel/features/products_feature/domain/entities/items_entity.dart';
import 'package:ecommerce_admin_panel/features/products_feature/presentation/cubit/products/products_view_all_cubit.dart';
import 'package:ecommerce_admin_panel/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../app_feature/global/widgets/shared_widgets/custom_appbar_title_text.dart';
import '../../../../../app_feature/global/widgets/shared_widgets/icon_with_border.dart';

class ProductsDesktop extends StatefulWidget {
  const ProductsDesktop({super.key});

  @override
  State<ProductsDesktop> createState() => _ProductsDesktopState();
}

class _ProductsDesktopState extends State<ProductsDesktop> {
  late TextEditingController searchController;

  @override
  void initState() {
    searchController = TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const CustomAppbarTitleText(data: "Products"),
          actions: [
            CustomConfirmButton(
              onPressed: () {},
              color: AppColor.white,
              text: "Export",
            ),
            CustomConfirmButton(
              width: 120,
              onPressed: () {
                Navigator.pushNamed(context, AppRoute.addProducts);
              },
              text: "+ Add Product",
            )
          ]),
      body: SingleChildScrollView(
        child: BlocBuilder<ProductsViewAllCubit, ProductsViewAllState>(
          builder: (context, state) {
            if (state is ProductsViewAllLoading) {
              return GlobalLoadingScreen();
            }
            if (state is ProductsViewAllLoaded) {
              final items = state.items;
              return CustomProductsPaginatedDataTable(
                  items: items, searchController: searchController);
            } else {
              return const Center(child: Text("no products"));
            }
          },
        ),
      ),
    );
  }
}

class CustomProductsPaginatedDataTable extends StatelessWidget {
  const CustomProductsPaginatedDataTable({
    super.key,
    required this.searchController,
    required this.items,
  });

  final TextEditingController searchController;
  final List<ItemsEntity> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: SizedBox(
        width: double.infinity,
        child: PaginatedDataTable(
            rowsPerPage: 10,
            headingRowColor:
                WidgetStateProperty.resolveWith((context) => AppColor.primary),
            dataRowMinHeight: 30,
            dataRowMaxHeight: 50,
            columnSpacing: 12,
            horizontalMargin: 12,
            showFirstLastButtons: true,
            header: Row(
              children: [
                SizedBox(
                  width: 300,
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: "Search",
                      hintStyle: const TextStyle(fontSize: 18, height: 1),
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(color: AppColor.black),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
            // showCheckboxColumn: true,

            columns: const [
              DataColumn(
                label: Text("Product"),
              ),
              DataColumn(label: Text("Inventory")),
              DataColumn(label: Text("Price")),
              DataColumn(label: Text("Discount")),
              DataColumn(label: Text("Edit/Delete")),
            ],
            source: MyProductsData(items: items)),
      ),
    );
  }
}

class MyProductsData extends DataTableSource {
  final List<ItemsEntity> items;

  MyProductsData({required this.items});
  @override
  DataRow? getRow(int index) {
    return DataRow(
        // selected: true, onSelectChanged: (value) {},
        cells: [
          DataCell(ProductListtile(
            items: items[index],
          )),
          DataCell(Text(items[index].itemsCount.toString())),
          DataCell(Text("${items[index].itemsPrice} EGP")),
          DataCell(Text("${items[index].itemsDiscount}%")),
          DataCell(SizedBox(
            width: 60,
            child: Row(children: [
              Expanded(
                child: IconWithBorder(
                  icon: Icons.edit,
                  onPressed: () {},
                ),
              ),
              Expanded(
                child: IconWithBorder(
                  icon: Icons.delete,
                  onPressed: () {},
                ),
              ),
            ]),
          )),
        ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => items.length;

  @override
  int get selectedRowCount => 0;
}

class ProductListtile extends StatelessWidget {
  final ItemsEntity items;
  const ProductListtile({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: CustomNetworkImage(
              imageUrl: "${AppLink.imageitems}/${items.itemsImage}"),
        ),
        const SizedBox(width: 10),
        Column(mainAxisSize: MainAxisSize.min, children: [
          Text(items.itemsName ?? ""),
          const Text("still fetching ")
        ]),
        const Spacer()
      ],
    );
  }
}
