import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_app_mobile/features/membership/domain/enums/membership_period.dart';
part 'membership_create_model.freezed.dart';
part 'membership_create_model.g.dart';

@freezed
abstract class MembershipCreateModel with _$MembershipCreateModel {
  const factory MembershipCreateModel({
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'plan_name') required String planName,
    @Default(MembershipPeriod.monthly)
    @JsonKey(name: 'period')
    MembershipPeriod period,
    @JsonKey(name: 'start_date') required DateTime startDate,
    @JsonKey(name: 'end_date') required DateTime endDate,
    @JsonKey(name: 'price') required double price,
  }) = _MembershipCreateModel;

  factory MembershipCreateModel.fromJson(Map<String, Object?> json) =>
      _$MembershipCreateModelFromJson(json);
}
