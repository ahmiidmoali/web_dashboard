import 'dart:io';

import 'package:ecommerce_admin_panel/features/app_feature/global/functions/fetch_remote_data.dart';
import 'package:ecommerce_admin_panel/features/products_feature/domain/entities/categories_entity.dart';

import '../../repository/products_repository.dart';

class AddCategoryUsecase {
  final ProductsRepository repository;
  AddCategoryUsecase({required this.repository});
  Future<RequestResult> call(
    CategoriesEntity categoriesEntity,
    File? image,
  ) async =>
      await repository.addCategory(categoriesEntity, image);
}
