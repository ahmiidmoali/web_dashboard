import 'package:ecommerce_admin_panel/features/app_feature/global/functions/fetch_remote_data.dart';
import '../../repository/products_repository.dart';

class DeleteCategoryUsecase {
  final ProductsRepository repository;
  DeleteCategoryUsecase({required this.repository});
  Future<RequestResult> call(String categoryId, String imageName) async =>
      await repository.deleteCategory(categoryId, imageName);
}
