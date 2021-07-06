import 'package:mobx/mobx.dart';

import 'package:split_it/modules/login/login_service.dart';
import 'package:split_it/modules/login/login_state.dart';

class LoginController {
  final _state = Observable<LoginState>(LoginStateEmpty());
  LoginState get state => _state.value;
  set state(LoginState state) => _state.value = state;

  final LoginService service;
  late Action googleSignIn;
  LoginController({required this.service}) {
    googleSignIn = Action(_googleSignIn);
  }

  Future<void> _googleSignIn() async {
    try {
      state = LoginStateLoading();

      final user = await service.googleSignIn();
      state = LoginStateSuccess(user: user);
    } catch (error) {
      state = LoginStateFailure(message: error.toString());
    }
  }
}
