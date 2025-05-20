import 'package:ecommerce_admin_panel/features/products_feature/domain/entities/items_entity.dart';

import '../../repository/products_repository.dart';

class GetProductsUsecase {
  final ProductsRepository repository;
  GetProductsUsecase({required this.repository});
  Future<List<ItemsEntity>> call(String categoryId) async =>
      await repository.getProducts(categoryId);
}
