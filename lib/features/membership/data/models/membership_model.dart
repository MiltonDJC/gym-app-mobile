import 'package:freezed_annotation/freezed_annotation.dart';
part 'membership_model.freezed.dart';
part 'membership_model.g.dart';

@freezed
abstract class MembershipModel with _$MembershipModel {
  const factory MembershipModel({
    required int id,
    required String userId,
    required DateTime startDate,
    required DateTime endDate,
    required String status,
    required String planName,
  }) = _MembershipModel;

  factory MembershipModel.fromJson(Map<String, Object?> json) =>
      _$MembershipModelFromJson(json);
}
