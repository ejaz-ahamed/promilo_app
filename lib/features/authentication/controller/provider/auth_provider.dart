import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:promilo_app/core/utils/shoow_snackbar_util.dart';
import 'package:promilo_app/features/authentication/controller/services/api_services.dart';
import 'package:promilo_app/features/authentication/model/user_model.dart';
import 'package:promilo_app/features/home/view/pages/home_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

@riverpod
class Auth extends _$Auth {
  @override
  bool build() {
    /// Loading handling state
    return true;
  }

  Future<void> login(
      String email, String password, BuildContext context) async {
    state = true;
    try {
      final token =
          await ApiServices.login(UserModel(email: email, password: password));
      state = false;
      if (token!.token != '') {
        Future.sync(() => context.go(HomePage.routePath));
        Future.sync(
          () => showSnackBar(context, 'Successfully logged in', false),
        );
      }
    } catch (e) {
      state = false;
      Future.sync(
        () => showSnackBar(context, 'An error occured: cannot fetch API', true),
      );
    }
  }
}
