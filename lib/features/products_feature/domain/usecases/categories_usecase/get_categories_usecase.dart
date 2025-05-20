import 'package:ecommerce_admin_panel/features/products_feature/domain/entities/categories_entity.dart';
import 'package:ecommerce_admin_panel/features/products_feature/domain/repository/products_repository.dart';

class GetCategoriesUsecase {
  final ProductsRepository repository;
  GetCategoriesUsecase({required this.repository});
  Future<List<CategoriesEntity>> call() async =>
      await repository.getCategories();
}
