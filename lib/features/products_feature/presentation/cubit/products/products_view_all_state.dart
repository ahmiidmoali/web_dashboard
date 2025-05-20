part of 'products_view_all_cubit.dart';

sealed class ProductsViewAllState extends Equatable {
  const ProductsViewAllState();

  @override
  List<Object> get props => [];
}

final class ProductsViewAllInitial extends ProductsViewAllState {}

final class ProductsViewAllLoading extends ProductsViewAllState {}

final class ProductsViewAllLoaded extends ProductsViewAllState {
  final List<ItemsEntity> items;
  final int currentcount;
  const ProductsViewAllLoaded(
      {required this.items, required this.currentcount});
  @override
  List<Object> get props => [items];
}

final class ProductsViewAllFailed extends ProductsViewAllState {}
