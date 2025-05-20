import 'package:bloc/bloc.dart';
import 'package:ecommerce_admin_panel/features/products_feature/domain/entities/items_entity.dart';
import 'package:ecommerce_admin_panel/features/products_feature/domain/usecases/products_usecases/delete_product_usecase.dart';
import 'package:ecommerce_admin_panel/features/products_feature/domain/usecases/products_usecases/get_all_products_usecase.dart';
import 'package:equatable/equatable.dart';
import '../../../../app_feature/global/functions/fetch_remote_data.dart';
part 'products_view_all_state.dart';

class ProductsViewAllCubit extends Cubit<ProductsViewAllState> {
  final GetAllProductsUsecase getAllProductsUsecase;
  final DeleteProductUsecase deleteProductUsecase;

  ProductsViewAllCubit(
      {required this.getAllProductsUsecase, required this.deleteProductUsecase})
      : super(ProductsViewAllInitial());
  int currentcount = 0;
  List<ItemsEntity> savedItems = [];

  fetchRemoving(String itemsId) {
    savedItems.removeWhere(
      (e) => e.itemsId.toString() == itemsId,
    );
  }

  Future<void> getAllProducts() async {
    try {
      emit(ProductsViewAllLoading());
      getAllProductsUsecase.call().then(
        (items) {
          savedItems = items;

          if (items.isNotEmpty) {
            emit(ProductsViewAllLoaded(
                items: items, currentcount: currentcount));
          } else {
            emit(ProductsViewAllLoaded(
                items: const [], currentcount: currentcount));
          }
        },
      );
    } catch (e) {
      emit(ProductsViewAllFailed());
    }
  }

  Future<void> deleteItem(String itemId, String imageName) async {
    try {
      emit(ProductsViewAllLoading());
      deleteProductUsecase.call(itemId, imageName).then(
        (result) {
          if (result == RequestResult.success) {
            fetchRemoving(itemId);
            currentcount = ++currentcount;
            emit(ProductsViewAllLoaded(
                items: savedItems, currentcount: currentcount));
          } else {
            emit(ProductsViewAllFailed());
          }
        },
      );
    } catch (e) {
      emit(ProductsViewAllFailed());
    }
  }
}
