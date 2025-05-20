import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:ecommerce_admin_panel/features/app_feature/global/functions/fetch_remote_data.dart';
import 'package:ecommerce_admin_panel/features/products_feature/domain/entities/categories_entity.dart';
import 'package:ecommerce_admin_panel/features/products_feature/domain/usecases/categories_usecase/add_category_usecase.dart';
import 'package:equatable/equatable.dart';

part 'categories_add_state.dart';

class CategoriesAddCubit extends Cubit<CategoriesAddState> {
  final AddCategoryUsecase addCategoryUsecase;
  CategoriesAddCubit({required this.addCategoryUsecase})
      : super(CategoriesAddInitial());
  Future<void> addCategory(
      CategoriesEntity categoriesEntity, File? image) async {
    try {
      emit(CategoriesAddLoading());
      addCategoryUsecase.call(categoriesEntity, image).then(
        (result) {
          if (result == RequestResult.success) {
            emit(CategoriesAddLoaded());
          } else {
            emit(CategoriesAddFailed());
          }
        },
      );
    } catch (e) {
      emit(CategoriesAddFailed());
    }
  }
}
