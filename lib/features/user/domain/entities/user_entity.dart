import 'package:gym_app_mobile/features/user/domain/enums/user_role.dart';

class UserEntity {
  const UserEntity({
    required this.id,
    required this.tenantId,
    required this.email,
    required this.role,
    required this.firstName,
    required this.lastName,
    this.phone,
    required this.isActive,
    required this.createdAt,
  });

  final String id;
  final String tenantId;
  final String email;
  final UserRole role;
  final String firstName;
  final String lastName;
  final String? phone;
  final bool isActive;
  final DateTime createdAt;
}
