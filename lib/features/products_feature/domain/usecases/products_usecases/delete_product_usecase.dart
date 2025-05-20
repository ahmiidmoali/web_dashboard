import 'package:ecommerce_admin_panel/features/app_feature/global/functions/fetch_remote_data.dart';
import '../../repository/products_repository.dart';

class DeleteProductUsecase {
  final ProductsRepository repository;
  DeleteProductUsecase({required this.repository});
  Future<RequestResult> call(String itemId, String imageName) async =>
      await repository.deleteProduct(itemId, imageName);
}
