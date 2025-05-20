import 'dart:io';

import 'package:ecommerce_admin_panel/features/app_feature/global/functions/fetch_remote_data.dart';
import 'package:ecommerce_admin_panel/features/products_feature/domain/entities/items_entity.dart';

import '../../domain/entities/categories_entity.dart';

abstract class ProductsRemoteDataSource {
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
