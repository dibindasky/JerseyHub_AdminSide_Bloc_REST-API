import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jerseyhub_admin/application/presentation/utils/validator_functions/validartors.dart';
import 'package:jerseyhub_admin/data/shared_preference/shared_pref.dart';
import 'package:jerseyhub_admin/domain/models/login_models/login_model/login_model.dart';
import 'package:jerseyhub_admin/domain/models/login_models/login_response/login_response.dart';
import 'package:jerseyhub_admin/domain/models/token/token.dart';

import '../../../data/api/auth/auth.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final ApiAuth apiAuth = ApiAuth();

  AuthBloc() : super(AuthState.initial()) {
    on<_SignIn>((event, emit) async {
      emit(state.copyWith(isLoading: true,hasError: false));
      if(event.loginModel.email!.isEmpty || !isValidEmail(event.loginModel.email!)){
        return emit(state.copyWith(hasError: true, isLoading: false,message: 'enter proper email'));
      }
      final result = await apiAuth.signIn(event.loginModel);
      result.fold((failure) {
        emit(state.copyWith(hasError: true, isLoading: false,message: 'something went wrong, try again'));
      }, (responseModel) async{
        emit(state.copyWith(isLoading: false, loginResponse: responseModel,message: 'login sucessfully'));
        await SharedPref.setToken(
          tokenModel: TokenModel(
            accessToken: responseModel.data!.accessToken!,
            refreshToken: responseModel.data!.refreshToken!,
          ),
        );
      });
    });
  }
}
