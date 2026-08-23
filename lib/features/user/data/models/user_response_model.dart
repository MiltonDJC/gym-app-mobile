import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_app_mobile/features/user/domain/entities/user_response_entity.dart';
import 'package:gym_app_mobile/features/user/domain/enums/user_role.dart';
part 'user_response_model.freezed.dart';
part 'user_response_model.g.dart';

@freezed
abstract class UserResponseModel with _$UserResponseModel {
  const UserResponseModel._();

  const factory UserResponseModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'tenant_id') required String tenantId,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'role') required UserRole role,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'is_active') required bool isActive,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _UserResponseModel;

  factory UserResponseModel.fromJson(Map<String, Object?> json) =>
      _$UserResponseModelFromJson(json);

  factory UserResponseModel.fromEntity(UserResponseEntity entity) =>
      UserResponseModel(
        id: entity.id,
        tenantId: entity.tenantId,
        email: entity.email,
        role: entity.role,
        firstName: entity.firstName,
        lastName: entity.lastName,
        phone: entity.phone,
        isActive: entity.isActive,
        createdAt: entity.createdAt,
      );

  UserResponseEntity toEntity() => UserResponseEntity(
    id: id,
    tenantId: tenantId,
    email: email,
    role: role,
    firstName: firstName,
    lastName: lastName,
    isActive: isActive,
    createdAt: createdAt,
  );
}
