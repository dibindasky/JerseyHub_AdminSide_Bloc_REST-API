import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jerseyhub_admin/data/services/users/users.dart';
import 'package:jerseyhub_admin/data/shared_preference/shared_pref.dart';
import 'package:jerseyhub_admin/domain/models/users/block_unblock_user_qurrey/block_unblock_user_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/users/get_users_qurrey/get_users_qurrey.dart';
import 'package:jerseyhub_admin/domain/models/users/get_users_response_model/get_users_response_model.dart';

part 'users_event.dart';
part 'users_state.dart';
part 'users_bloc.freezed.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  UsersBloc() : super(UsersState.initial()) {
    final UsersApi usersApi = UsersApi();

    on<_GetUsers>((event, emit) async {
      emit(state.copyWith(
          isLoading: true, isBlocked: false, isUnBlocked: false));
      final tokenModel = await SharedPref.getToken();
      final result = await usersApi.getUsers(
          getUsersQurrey: event.getUsersQurrey, tokenModel: tokenModel);
      result.fold((failure) {
        emit(state.copyWith(
            isLoading: false,
            hasError: true,
            isBlocked: false,
            isUnBlocked: false,
            message: 'can\'t connect to server, something went wrong'));
      }, (getUsersResponseModel) {
        emit(state.copyWith(
            isLoading: false,
            hasError: false,
            isBlocked: false,
            isUnBlocked: false,
            message: null,
            getUsersResponseModel: getUsersResponseModel));
      });
    });

    on<_BlockUser>((event, emit) async {
      emit(state.copyWith(
          isLoading: false, isBlocked: false, isUnBlocked: false));
      final tokenModel = await SharedPref.getToken();
      final result = await usersApi.blockUser(
          blockUnblockUserQurrey: event.blockUnblockUserQurrey,
          tokenModel: tokenModel);
      result.fold((failure) {
        emit(state.copyWith(
            isLoading: false,
            hasError: true,
            isBlocked: false,
            isUnBlocked: false,
            message: 'can\'t connect to server, something went wrong'));
      }, (getUsersResponseModel) {
        emit(state.copyWith(
          isLoading: false,
          isBlocked: true,
          hasError: false,
          isUnBlocked: false,
          message: 'Blocked user successfully',
        ));
        add(UsersEvent.getUsers(getUsersQurrey: GetUsersQurrey(page: 1)));
      });
    });

    on<_UnBlockUser>((event, emit) async {
      emit(state.copyWith(
          isLoading: false, isBlocked: false, isUnBlocked: false));
      final tokenModel = await SharedPref.getToken();
      final result = await usersApi.unBlockUser(
          blockUnblockUserQurrey: event.blockUnblockUserQurrey,
          tokenModel: tokenModel);
      result.fold((failure) {
        emit(state.copyWith(
            isLoading: false,
            hasError: true,
            isBlocked: false,
            isUnBlocked: false,
            message: 'can\'t connect to server, something went wrong'));
      }, (getUsersResponseModel) {
        emit(state.copyWith(
          isLoading: false,
          isBlocked: false,
          hasError: false,
          isUnBlocked: true,
          message: 'Unblocked user successfully',
        ));
        add(UsersEvent.getUsers(getUsersQurrey: GetUsersQurrey(page: 1)));
      });
    });
  }
}
