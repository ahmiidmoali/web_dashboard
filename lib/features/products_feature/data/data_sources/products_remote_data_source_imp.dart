import 'dart:io';

import 'package:ecommerce_admin_panel/features/app_feature/global/functions/fetch_remote_data.dart';
import 'package:ecommerce_admin_panel/features/products_feature/data/models/categories_model.dart';
import 'package:ecommerce_admin_panel/features/products_feature/domain/entities/categories_entity.dart';

import 'package:ecommerce_admin_panel/features/products_feature/domain/entities/items_entity.dart';

import '../../../../linkapi.dart';
import '../../../app_feature/global/services/network_services.dart';
import '../models/items_model.dart';
import 'products_remote_data_source.dart';

class ProductsRemoteDataSourceImp extends ProductsRemoteDataSource {
  final NetworkServices networkServices;

  ProductsRemoteDataSourceImp({required this.networkServices});
  @override
  Future<RequestResult> addProduct(
    ItemsEntity itemEntity,
    File? image,
  ) async {
    try {
      Map data = {
        "itname": itemEntity.itemsName,
        "itnamear": itemEntity.itemsNameAr,
        "itdesc": itemEntity.itemsDesc,
        "itdescar": itemEntity.itemsDescAr,
        "itcount": itemEntity.itemsCount,
        "itactive": itemEntity.itemsActive,
        "itprice": itemEntity.itemsPrice,
        "itdiscount": itemEntity.itemsDiscount,
        "itcategories": itemEntity.itemsCategories,
      };
      return await networkServices.postRequestWithOneImage(
          AppLink.itemsadd, data, image);
    } catch (e) {
      print("ProductsRemoteDataSourceImp addProduct  exception");
      return RequestResult.exception;
    }
  }

  @override
  Future<RequestResult> deleteProduct(String itemId, String imageName) async {
    try {
      Map data = {"itid": itemId, "oldpic": imageName};
      return await networkServices.postCheckSuccess(
          link: AppLink.itemsdelete, body: data);
    } catch (e) {
      print("ProductsRemoteDataSourceImp deleteProduct  exception");
      return RequestResult.exception;
    }
  }

  @override
  Future<RequestResult> editProduct(ItemsEntity itemEntity, String oldImageName,
      String isPicChanged, String itemId) async {
    try {
      Map data = {
        "itname": itemEntity.itemsName,
        "itnamear": itemEntity.itemsNameAr,
        "itdesc": itemEntity.itemsDesc,
        "itdescar": itemEntity.itemsDescAr,
        "itcount": itemEntity.itemsCount,
        "itactive": itemEntity.itemsActive,
        "itprice": itemEntity.itemsPrice,
        "itdiscount": itemEntity.itemsDiscount,
        "itcategories": itemEntity.itemsCategories,
        "oldpic": oldImageName,
        "iswithpic": isPicChanged,
        "itid": itemId,
      };
      return await networkServices.postCheckSuccess(
          link: AppLink.itemsedit, body: data);
    } catch (e) {
      print("ProductsRemoteDataSourceImp editProduct  exception");
      return RequestResult.exception;
    }
  }

  @override
  Future<List<ItemsEntity>> getAllProducts() async {
    try {
      List<dynamic> responce = await networkServices
          .postGetData(link: AppLink.itemsviewAll, body: {"id": ""});
      // List itemsJson = responce[0];
      List<ItemsEntity> items = [];
      items.addAll(responce.map(
        (e) => ItemsModel.fromJson(e),
      ));
      return items;
    } catch (e) {
      print("ProductsRemoteDataSourceImp getAllProducts  exception");
      throw Exception();
    }
  }

  @override
  Future<List<ItemsEntity>> getProducts(String categoryId) async {
    try {
      List<dynamic> responce = await networkServices
          .postGetData(link: AppLink.itemsview, body: {"id": categoryId});
      // List itemsJson = responce[0];
      List<ItemsEntity> items = [];
      items.addAll(responce.map(
        (e) => ItemsModel.fromJson(e),
      ));
      return items;
    } catch (e) {
      print("ProductsRemoteDataSourceImp getProducts  exception");
      throw Exception();
    }
  }

// Categories ----------------------------------------------------------------
  @override
  Future<List<CategoriesEntity>> getCategories() async {
    try {
      List<dynamic> responce =
          await networkServices.postGetData(link: AppLink.catview, body: {});
      // List itemsJson = responce[0];
      List<CategoriesEntity> categories = [];
      categories.addAll(responce.map(
        (e) => CategoriesModel.fromJson(e),
      ));
      return categories;
    } catch (e) {
      print("ProductsRemoteDataSourceImp getCategories  exception");
      throw Exception();
    }
  }

  @override
  Future<RequestResult> activeCategories(
      String categoryId, String isActive) async {
    try {
      Map data = {"catid": categoryId, "catactive": isActive};
      return await networkServices.postCheckSuccess(
          link: AppLink.catactive, body: data);
    } catch (e) {
      print("ProductsRemoteDataSourceImp activeCategories  exception");
      return RequestResult.exception;
    }
  }

  @override
  Future<RequestResult> addCategory(
    CategoriesEntity itemEntity,
    File? image,
  ) async {
    try {
      Map data = {
        "catname": itemEntity.categoriesName,
        "catnamear": itemEntity.categoriesNameAr,
      };
      return await networkServices.postRequestWithOneImage(
          AppLink.catadd, data, image);
    } catch (e) {
      print("ProductsRemoteDataSourceImp addCategory  exception");
      return RequestResult.exception;
    }
  }

  @override
  Future<RequestResult> deleteCategory(String categoryId, String imageName) {
    // TODO: implement deleteCategory
    throw UnimplementedError();
  }

  @override
  Future<RequestResult> editCategory(CategoriesEntity itemEntity,
      String oldImageName, String isPicChanged, String categoryId) {
    // TODO: implement editCategory
    throw UnimplementedError();
  }
}
