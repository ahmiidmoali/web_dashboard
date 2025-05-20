import 'package:ecommerce_admin_panel/features/products_feature/data/data_sources/products_remote_data_source.dart';
import 'package:ecommerce_admin_panel/features/products_feature/domain/repository/products_repository.dart';
<<<<<<< HEAD
import 'package:ecommerce_admin_panel/features/products_feature/domain/usecases/categories_usecase/active_categories_usecase.dart';
import 'package:ecommerce_admin_panel/features/products_feature/domain/usecases/categories_usecase/add_category_usecase.dart';
import 'package:ecommerce_admin_panel/features/products_feature/domain/usecases/categories_usecase/delete_category_usecase.dart';
import 'package:ecommerce_admin_panel/features/products_feature/domain/usecases/categories_usecase/edit_category_usecase.dart';
import 'package:ecommerce_admin_panel/features/products_feature/domain/usecases/categories_usecase/get_categories_usecase.dart';
=======
>>>>>>> 673f3afc5aea4de5bfbe8339253e2c72c5f129ab
import 'package:ecommerce_admin_panel/features/products_feature/domain/usecases/products_usecases/add_product_usecase.dart';
import 'package:ecommerce_admin_panel/features/products_feature/domain/usecases/products_usecases/delete_product_usecase.dart';
import 'package:ecommerce_admin_panel/features/products_feature/domain/usecases/products_usecases/edit_product_usecase.dart';
import 'package:ecommerce_admin_panel/features/products_feature/domain/usecases/products_usecases/get_all_products_usecase.dart';
import 'package:ecommerce_admin_panel/features/products_feature/domain/usecases/products_usecases/get_products_usecase.dart';
<<<<<<< HEAD
import 'package:ecommerce_admin_panel/features/products_feature/presentation/cubit/categories/categories_view/categories_view_cubit.dart';
=======
>>>>>>> 673f3afc5aea4de5bfbe8339253e2c72c5f129ab
import 'package:ecommerce_admin_panel/features/products_feature/presentation/cubit/products/products_view_all_cubit.dart';

import '../../main_injection_container.dart';
import 'data/data_sources/products_remote_data_source_imp.dart';
import 'data/repository/products_repository_imp.dart';

Future<void> productsInjectionContainer() async {
//cubit
<<<<<<< HEAD
//.....products
=======
>>>>>>> 673f3afc5aea4de5bfbe8339253e2c72c5f129ab
  sl.registerFactory<ProductsViewAllCubit>(
    () => ProductsViewAllCubit(
        deleteProductUsecase: sl.call(), getAllProductsUsecase: sl.call()),
  );
<<<<<<< HEAD
  //.....categories
  sl.registerFactory<CategoriesViewCubit>(
    () => CategoriesViewCubit(
        getCategoriesUsecase: sl.call(), deleteCategoryUsecase: sl.call()),
  );

//usecases
//.....products
=======

//usecases
>>>>>>> 673f3afc5aea4de5bfbe8339253e2c72c5f129ab
  sl.registerLazySingleton<AddProductUsecase>(
    () => AddProductUsecase(repository: sl.call()),
  );
  sl.registerLazySingleton<DeleteProductUsecase>(
    () => DeleteProductUsecase(repository: sl.call()),
  );
  sl.registerLazySingleton<EditProductUsecase>(
    () => EditProductUsecase(repository: sl.call()),
  );
  sl.registerLazySingleton<GetProductsUsecase>(
    () => GetProductsUsecase(repository: sl.call()),
  );
  sl.registerLazySingleton<GetAllProductsUsecase>(
    () => GetAllProductsUsecase(repository: sl.call()),
  );
<<<<<<< HEAD
  //.....categories
  sl.registerLazySingleton<ActiveCategoriesUsecase>(
    () => ActiveCategoriesUsecase(repository: sl.call()),
  );
  sl.registerLazySingleton<AddCategoryUsecase>(
    () => AddCategoryUsecase(repository: sl.call()),
  );
  sl.registerLazySingleton<DeleteCategoryUsecase>(
    () => DeleteCategoryUsecase(repository: sl.call()),
  );
  sl.registerLazySingleton<EditCategoryUsecase>(
    () => EditCategoryUsecase(repository: sl.call()),
  );
  sl.registerLazySingleton<GetCategoriesUsecase>(
    () => GetCategoriesUsecase(repository: sl.call()),
  );
=======
>>>>>>> 673f3afc5aea4de5bfbe8339253e2c72c5f129ab

//repo&data
  sl.registerLazySingleton<ProductsRepository>(
    () => ProductsRepositoryImp(dataSource: sl.call()),
  );
  sl.registerLazySingleton<ProductsRemoteDataSource>(
    () => ProductsRemoteDataSourceImp(networkServices: sl.call()),
  );
}
