import 'dart:io';

import 'package:ecommerce_admin_panel/features/app_feature/global/functions/fetch_remote_data.dart';
import 'package:ecommerce_admin_panel/features/products_feature/domain/entities/items_entity.dart';

import '../../repository/products_repository.dart';

class AddProductUsecase {
  final ProductsRepository repository;
  AddProductUsecase({required this.repository});
  Future<RequestResult> call(
    ItemsEntity itemEntit,
    File? image,
  ) async =>
      await repository.addProduct(itemEntit, image);
}
