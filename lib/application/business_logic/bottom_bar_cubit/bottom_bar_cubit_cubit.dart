import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_bar_cubit_state.dart';
part 'bottom_bar_cubit_cubit.freezed.dart';

class BottomBarCubitCubit extends Cubit<BottomBarCubitState> {
  BottomBarCubitCubit() : super(const BottomBarCubitState.initial(0));
  void changeIndex(int index) {
    emit(BottomBarCubitState.initial(index));
  }
}
