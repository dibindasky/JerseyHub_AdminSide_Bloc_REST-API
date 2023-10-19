import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jerseyhub_admin/data/services/auth/auth.dart';
import 'package:jerseyhub_admin/data/shared_preference/shared_pref.dart';
import 'package:jerseyhub_admin/domain/models/login_models/login_model/login_model.dart';
import 'package:jerseyhub_admin/domain/models/login_models/login_response/login_response.dart';
import 'package:jerseyhub_admin/domain/models/token/token.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> siginInKey = GlobalKey<FormState>();

  final ApiAuth apiAuth = ApiAuth();

  AuthBloc() : super(AuthState.initial()) {
    on<_SignIn>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false));
      final result = await apiAuth.signIn(event.loginModel);
      result.fold((failure) {
        emit(state.copyWith(
            hasError: true, isLoading: false, message: failure.message));
      }, (responseModel) async {
        emit(state.copyWith(
            isLoading: false,
            loginResponse: responseModel,
            message: responseModel.message));
        await SharedPref.setToken(
          tokenModel: TokenModel(
            accessToken: responseModel.data!.accessToken!,
            refreshToken: responseModel.data!.refreshToken!,
          ),
        );
        await SharedPref.setLogin();
        emailController.clear();
        passwordController.clear();
      });
    });
    on<_SignOut>((event, emit) => SharedPref.removeLogin());
    on<_Obscure>(
        (event, emit) => emit(state.copyWith(obscure: !state.obscure)));
    on<_Log>((event, emit) async {
      final login = await SharedPref.getLogin();
      emit(state.copyWith(isLoggedIn: login));
    });
  }
}
