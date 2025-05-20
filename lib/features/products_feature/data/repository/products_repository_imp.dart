import 'dart:io';

import 'package:ecommerce_admin_panel/features/app_feature/global/functions/fetch_remote_data.dart';
import 'package:ecommerce_admin_panel/features/products_feature/data/data_sources/products_remote_data_source.dart';
import 'package:ecommerce_admin_panel/features/products_feature/domain/entities/categories_entity.dart';
import 'package:ecommerce_admin_panel/features/products_feature/domain/entities/items_entity.dart';

import '../../domain/repository/products_repository.dart';

class ProductsRepositoryImp extends ProductsRepository {
  final ProductsRemoteDataSource dataSource;
  ProductsRepositoryImp({required this.dataSource});
  //products-------------------------------------------
  @override
  Future<RequestResult> addProduct(ItemsEntity itemEntity, File? image) =>
      dataSource.addProduct(itemEntity, image);

  @override
  Future<RequestResult> deleteProduct(String itemId, String imageName) =>
      dataSource.deleteProduct(itemId, imageName);

  @override
  Future<RequestResult> editProduct(ItemsEntity itemEntity, String oldImageName,
          String isPicChanged, String itemId) =>
      dataSource.editProduct(itemEntity, oldImageName, isPicChanged, itemId);

  @override
  Future<List<ItemsEntity>> getAllProducts() => dataSource.getAllProducts();

  @override
  Future<List<ItemsEntity>> getProducts(String categoryId) =>
      dataSource.getProducts(categoryId);
//categories-------------------------------------------
  @override
  Future<RequestResult> activeCategories(String categoryId, String isActive) =>
      dataSource.activeCategories(categoryId, isActive);

  @override
  Future<RequestResult> addCategory(CategoriesEntity itemEntity, File? image) =>
      dataSource.addCategory(itemEntity, image);

  @override
  Future<RequestResult> deleteCategory(String categoryId, String imageName) =>
      dataSource.deleteCategory(categoryId, imageName);

  @override
  Future<RequestResult> editCategory(CategoriesEntity itemEntity,
          String oldImageName, String isPicChanged, String categoryId) =>
      dataSource.editCategory(
          itemEntity, oldImageName, isPicChanged, categoryId);

  @override
  Future<List<CategoriesEntity>> getCategories() => dataSource.getCategories();
}
