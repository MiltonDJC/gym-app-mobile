import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_app_mobile/features/membership/domain/entities/membership_entity.dart';
import 'package:gym_app_mobile/features/membership/domain/enums/membership_period.dart';
import 'package:gym_app_mobile/features/membership/domain/enums/membership_status.dart';
part 'membership_model.freezed.dart';
part 'membership_model.g.dart';

@freezed
abstract class MembershipModel with _$MembershipModel {
  const MembershipModel._();

  const factory MembershipModel({
    required String id,
    required String tenantId,
    required String userId,
    required String planName,
    required MembershipPeriod period,
    required MembershipStatus status,
    required DateTime startDate,
    required DateTime endDate,
    required double price,
  }) = _MembershipModel;

  factory MembershipModel.fromJson(Map<String, Object?> json) =>
      _$MembershipModelFromJson(json);

  factory MembershipModel.fromEntity(MembershipEntity entity) =>
      MembershipModel(
        id: entity.id,
        tenantId: entity.tenantId,
        userId: entity.userId,
        planName: entity.planName,
        period: entity.period,
        status: entity.status,
        startDate: entity.startDate,
        endDate: entity.endDate,
        price: entity.price,
      );

  MembershipEntity toEntity() => MembershipEntity(
    id: id,
    tenantId: tenantId,
    userId: userId,
    planName: planName,
    period: period,
    status: status,
    startDate: startDate,
    endDate: endDate,
    price: price,
  );
}
