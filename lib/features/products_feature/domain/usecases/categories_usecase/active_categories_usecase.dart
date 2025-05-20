import 'package:ecommerce_admin_panel/features/app_feature/global/functions/fetch_remote_data.dart';
import '../../repository/products_repository.dart';

class ActiveCategoriesUsecase {
  final ProductsRepository repository;
  ActiveCategoriesUsecase({required this.repository});
  Future<RequestResult> call(String categoryId, String isActive) async =>
      await repository.activeCategories(categoryId, isActive);
}
