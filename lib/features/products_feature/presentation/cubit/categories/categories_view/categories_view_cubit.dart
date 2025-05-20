import 'package:bloc/bloc.dart';
import 'package:ecommerce_admin_panel/features/products_feature/domain/entities/categories_entity.dart';
import 'package:ecommerce_admin_panel/features/products_feature/domain/usecases/categories_usecase/delete_category_usecase.dart';
import 'package:ecommerce_admin_panel/features/products_feature/domain/usecases/categories_usecase/get_categories_usecase.dart';
import 'package:equatable/equatable.dart';

part 'categories_view_state.dart';

class CategoriesViewCubit extends Cubit<CategoriesViewState> {
  final GetCategoriesUsecase getCategoriesUsecase;
  final DeleteCategoryUsecase deleteCategoryUsecase;
  CategoriesViewCubit(
      {required this.getCategoriesUsecase, required this.deleteCategoryUsecase})
      : super(CategoriesViewInitial());
  int currentcount = 0;
  List<CategoriesEntity> savedCategories = [];

  fetchRemoving(String itemsId) {
    savedCategories.removeWhere(
      (e) => e.categoriesId.toString() == itemsId,
    );
  }

  Future<void> getAllCategories() async {
    try {
      emit(CategoriesViewLoading());
      getCategoriesUsecase.call().then(
        (items) {
          savedCategories = items;

          if (items.isNotEmpty) {
            emit(CategoriesViewLoaded(
                categories: items, currentcount: currentcount));
          } else {
            emit(CategoriesViewLoaded(
                categories: const [], currentcount: currentcount));
          }
        },
      );
    } catch (e) {
      emit(CategoriesViewFailure());
    }
  }
}
