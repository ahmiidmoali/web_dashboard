import 'package:ecommerce_admin_panel/features/app_feature/global/functions/fetch_remote_data.dart';
import 'package:ecommerce_admin_panel/features/products_feature/domain/entities/items_entity.dart';

import '../../repository/products_repository.dart';

class EditProductUsecase {
  final ProductsRepository repository;
  EditProductUsecase({required this.repository});
  Future<RequestResult> call(ItemsEntity itemEntit, String oldImageName,
          String isPicChanged, String itemId) async =>
      await repository.editProduct(
          itemEntit, oldImageName, isPicChanged, itemId);
}
