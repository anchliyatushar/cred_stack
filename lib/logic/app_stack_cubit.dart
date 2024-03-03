import 'package:flutter_bloc/flutter_bloc.dart';

class AppStackCubit extends Cubit<int> {
  AppStackCubit() : super(0);

  void nextPage() => emit(state + 1);

  void previousPage() {
    if (state == 0) {
      return;
    }

    emit(state - 1);
  }

  void setPage(int pageNumber) {
    if (pageNumber < 0) {
      return;
    }

    emit(pageNumber);
  }
}
