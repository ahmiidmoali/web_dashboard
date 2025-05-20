import 'dart:io';

import 'package:ecommerce_admin_panel/features/app_feature/global/functions/fetch_remote_data.dart';
import 'package:ecommerce_admin_panel/features/products_feature/domain/entities/categories_entity.dart';
import 'package:ecommerce_admin_panel/features/products_feature/domain/entities/items_entity.dart';

abstract class ProductsRepository {
  //products
  Future<List<ItemsEntity>> getAllProducts();
  Future<List<ItemsEntity>> getProducts(String categoryId);
  Future<RequestResult> deleteProduct(String itemId, String imageName);
  Future<RequestResult> editProduct(ItemsEntity itemEntity, String oldImageName,
      String isPicChanged, String itemId);
  Future<RequestResult> addProduct(
    ItemsEntity itemEntity,
    File? image,
  );
  //products

  Future<List<CategoriesEntity>> getCategories();
  Future<RequestResult> activeCategories(String categoryId, String isActive);
  Future<RequestResult> deleteCategory(String categoryId, String imageName);
  Future<RequestResult> editCategory(CategoriesEntity itemEntity,
      String oldImageName, String isPicChanged, String categoryId);
  Future<RequestResult> addCategory(
    CategoriesEntity itemEntity,
    File? image,
  );
}
// get_all_products_usecase
// get_products_usecase
// delete_product_usecase
// edit_product_usecase
// add_product_usecase

// get_categories_usecase
// delete_category_usecase
// edit_category_usecase
// add_category_usecase
//active_categories_usecase