import 'dart:convert';
import 'dart:developer';

import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:promilo_app/core/exception/base_exception.dart';
import 'package:promilo_app/features/authentication/model/auth_resp_model.dart';
import 'package:promilo_app/features/authentication/model/user_model.dart';

class ApiServices {
  static final dio = Dio();

  static Future<AuthResponseModel?> login(UserModel user) async {
    final hashedPassword =
        sha256.convert(utf8.encode(user.password.trim())).toString();

    final formData = FormData.fromMap({
      'username': user.email,
      'password': hashedPassword,
      'grant_type': 'password',
    });

    try {
      final response = await dio.post(
        'https://apiv2stg.promilo.com/user/oauth/token',
        data: formData,
        options: Options(
          headers: {
            'Authorization': 'Basic UHJvbWlsbzpxNCE1NkBaeSN4MiRHQg==',
          },
        ),
      );

      if (response.statusCode == 200) {
        log("hurrey");
        return AuthResponseModel(
            token: response.data['response']['access_token']);
      } else {
        log(response.statusCode.toString());
        throw Exception(
            'Login failed with status code: ${response.statusCode}');
      }
    } catch (e) {
      log(e.toString());
      throw BaseException('Login failed, try again. $e');
    }
  }
}
