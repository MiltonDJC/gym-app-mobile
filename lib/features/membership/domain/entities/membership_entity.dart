import 'package:gym_app_mobile/features/membership/domain/enums/membership_period.dart';
import 'package:gym_app_mobile/features/membership/domain/enums/membership_status.dart';

class MembershipEntity {
  MembershipEntity({
    required this.id,
    required this.tenantId,
    required this.userId,
    required this.planName,
    required this.period,
    required this.status,
    required this.startDate,
    required this.endDate,
    required this.price,
  });

  final String id;
  final String tenantId;
  final String userId;
  final String planName;
  final MembershipPeriod period;
  final MembershipStatus status;
  final DateTime startDate;
  final DateTime endDate;
  final double price;
}
