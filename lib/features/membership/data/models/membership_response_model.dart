import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_app_mobile/features/membership/domain/entities/membership_response_entity.dart';
import 'package:gym_app_mobile/features/membership/domain/enums/membership_period.dart';
import 'package:gym_app_mobile/features/membership/domain/enums/membership_status.dart';
part 'membership_response_model.freezed.dart';
part 'membership_response_model.g.dart';

@freezed
abstract class MembershipResponseModel with _$MembershipResponseModel {
  const MembershipResponseModel._();

  const factory MembershipResponseModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'tenant_id') required String tenantId,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'plan_name') required String planName,
    @JsonKey(name: 'period') required MembershipPeriod period,
    @JsonKey(name: 'status') required MembershipStatus status,
    @JsonKey(name: 'start_date') required DateTime startDate,
    @JsonKey(name: 'end_date') required DateTime endDate,
    @JsonKey(name: 'price') required double price,
  }) = _MembershipModel;

  factory MembershipResponseModel.fromJson(Map<String, Object?> json) =>
      _$MembershipResponseModelFromJson(json);

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
