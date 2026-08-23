import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_app_mobile/features/membership/domain/entities/membership_response_entity.dart';
import 'package:gym_app_mobile/features/membership/domain/enums/membership_period.dart';
import 'package:gym_app_mobile/features/membership/domain/enums/membership_status.dart';
part 'membership_model.freezed.dart';
part 'membership_model.g.dart';

@freezed
abstract class MembershipResponseModel with _$MembershipModel {
  const MembershipResponseModel._();

  const factory MembershipResponseModel({
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

  factory MembershipResponseModel.fromJson(Map<String, Object?> json) =>
      _$MembershipModelFromJson(json);

  factory MembershipResponseModel.fromEntity(MembershipResponseEntity entity) =>
      MembershipResponseModel(
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

  MembershipResponseEntity toEntity() => MembershipResponseEntity(
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
