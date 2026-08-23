import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_app_mobile/features/user/domain/entities/user_entity.dart';
import 'package:gym_app_mobile/features/user/domain/enums/user_role.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const UserModel._();

  const factory UserModel({
    required String id,
    required String tenantId,
    required String email,
    required UserRole role,
    required String firstName,
    required String lastName,
    required String? phone,
    required bool isActive,
    required DateTime createdAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);

  factory UserModel.fromEntity(UserEntity entity) => UserModel(
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

  UserEntity toEntity() => UserEntity(
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
