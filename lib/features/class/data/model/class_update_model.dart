import 'package:freezed_annotation/freezed_annotation.dart';
part 'class_update_model.freezed.dart';
part 'class_update_model.g.dart';

@freezed
abstract class ClassUpdateModel with _$ClassUpdateModel {
  const factory ClassUpdateModel({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'trainer_id') String? trainerId,
    @JsonKey(name: 'schedule') DateTime? schedule,
    @JsonKey(name: 'capacity') int? capacity,
    @JsonKey(name: 'is_active') bool? isActive,
  }) = _ClassUpdateModel;

  factory ClassUpdateModel.fromJson(Map<String, Object?> json) =>
      _$ClassUpdateModelFromJson(json);
}
