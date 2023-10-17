part of 'users_bloc.dart';

@freezed
class UsersEvent with _$UsersEvent {
  const factory UsersEvent.getUsers({required GetUsersQurrey getUsersQurrey}) =
      _GetUsers;
  const factory UsersEvent.blockUser(
      {required BlockUnblockUserQurrey blockUnblockUserQurrey}) = _BlockUser;
  const factory UsersEvent.unBlockUser(
      {required BlockUnblockUserQurrey blockUnblockUserQurrey}) = _UnBlockUser;
}
