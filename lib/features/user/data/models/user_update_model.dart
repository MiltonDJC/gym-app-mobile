import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_app_mobile/features/user/domain/enums/user_role.dart';
part 'user_update_model.freezed.dart';
part 'user_update_model.g.dart';

@freezed
abstract class UserUpdateModel with _$UserUpdateModel {
  const factory UserUpdateModel({
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'role') UserRole? role,
    @JsonKey(name: 'is_active') bool? isActive,
  }) = _UserUpdateModel;

  factory UserUpdateModel.fromJson(Map<String, Object?> json) =>
      _$UserUpdateModelFromJson(json);
}
