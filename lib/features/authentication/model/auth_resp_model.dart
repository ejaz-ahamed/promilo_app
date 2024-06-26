import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_resp_model.freezed.dart';

@freezed
class AuthResponseModel with _$AuthResponseModel {
  const factory AuthResponseModel({
    required String token,
  }) = _AuthResponseModel;
}
