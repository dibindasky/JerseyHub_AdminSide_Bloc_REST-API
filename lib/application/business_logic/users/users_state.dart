part of 'users_bloc.dart';

@freezed
class UsersState with _$UsersState {
  const factory UsersState(
      {required bool isLoading,
      required bool isBlocked,
      required bool isUnBlocked,
      required bool hasError,
      String? message,
      GetUsersResponseModel? getUsersResponseModel}) = _Initial;
  factory UsersState.initial() => const UsersState(
      isLoading: false, isBlocked: false, isUnBlocked: false, hasError: false);
}
