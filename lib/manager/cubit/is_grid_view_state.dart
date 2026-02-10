part of 'is_grid_view_cubit.dart';

@immutable
sealed class IsGridViewState {}

final class IsGridViewInitial extends IsGridViewState {}
final class IsGridViewGrid extends IsGridViewState {}
final class IsGridViewList extends IsGridViewState {}
