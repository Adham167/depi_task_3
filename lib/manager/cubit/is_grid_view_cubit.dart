import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'is_grid_view_state.dart';

class IsGridViewCubit extends Cubit<IsGridViewState> {
  IsGridViewCubit() : super(IsGridViewInitial());
  void isGridView(bool isGrid) {
    !isGrid ? emit(IsGridViewGrid()) : emit(IsGridViewList());
  }
}
