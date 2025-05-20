import 'package:ecommerce_admin_panel/features/app_feature/global/functions/fetch_remote_data.dart';
import 'package:ecommerce_admin_panel/features/products_feature/domain/entities/categories_entity.dart';
import '../../repository/products_repository.dart';

class EditCategoryUsecase {
  final ProductsRepository repository;
  EditCategoryUsecase({required this.repository});
  Future<RequestResult> call(CategoriesEntity categoriesEntity,
          String oldImageName, String isPicChanged, String itemId) async =>
      await repository.editCategory(
          categoriesEntity, oldImageName, isPicChanged, itemId);
}
