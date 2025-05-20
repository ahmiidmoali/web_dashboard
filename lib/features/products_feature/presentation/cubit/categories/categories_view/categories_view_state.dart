part of 'categories_view_cubit.dart';

sealed class CategoriesViewState extends Equatable {
  const CategoriesViewState();

  @override
  List<Object> get props => [];
}

final class CategoriesViewInitial extends CategoriesViewState {}

final class CategoriesViewLoading extends CategoriesViewState {}

final class CategoriesViewLoaded extends CategoriesViewState {
  final List<CategoriesEntity> categories;
  final int currentcount;
  const CategoriesViewLoaded(
      {required this.categories, required this.currentcount});
  @override
  List<Object> get props => [categories];
}

final class CategoriesViewFailure extends CategoriesViewState {}
