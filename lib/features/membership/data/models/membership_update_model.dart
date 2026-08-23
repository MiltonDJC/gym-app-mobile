import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_app_mobile/features/membership/domain/enums/membership_period.dart';
part 'membership_update_model.freezed.dart';
part 'membership_update_model.g.dart';

@freezed
abstract class MembershipUpdateModel with _$MembershipUpdateModel {
  const factory MembershipUpdateModel({
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'plan_name') String? planName,
    @Default(MembershipPeriod.monthly)
    @JsonKey(name: 'period')
    MembershipPeriod? period,
    @JsonKey(name: 'start_date') DateTime? startDate,
    @JsonKey(name: 'end_date') DateTime? endDate,
    @JsonKey(name: 'price') double? price,
  }) = _MembershipUpdateModel;

  factory MembershipUpdateModel.fromJson(Map<String, Object?> json) =>
      _$MembershipUpdateModelFromJson(json);
}
