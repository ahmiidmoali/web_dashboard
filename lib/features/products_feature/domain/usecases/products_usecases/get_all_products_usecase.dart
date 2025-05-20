import 'package:ecommerce_admin_panel/features/products_feature/domain/entities/items_entity.dart';

import '../../repository/products_repository.dart';

class GetAllProductsUsecase {
  final ProductsRepository repository;
  GetAllProductsUsecase({required this.repository});
  Future<List<ItemsEntity>> call() async {
    return await repository.getAllProducts();
  }
}
