import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_app_mobile/features/user/domain/enums/user_role.dart';
part 'user_create_model.freezed.dart';
part 'user_create_model.g.dart';

@freezed
abstract class UserCreateModel with _$UserCreateModel {
  const factory UserCreateModel({
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'password') required String password,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'phone') String? phone,
    @Default(UserRole.student) @JsonKey(name: 'role') UserRole role,
  }) = _UserResponseModel;

  factory UserCreateModel.fromJson(Map<String, Object?> json) =>
      _$UserCreateModelFromJson(json);
}
