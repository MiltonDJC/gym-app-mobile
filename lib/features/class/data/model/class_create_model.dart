import 'package:freezed_annotation/freezed_annotation.dart';
part 'class_create_model.freezed.dart';
part 'class_create_model.g.dart';

@freezed
abstract class ClassCreateModel with _$ClassCreateModel {
  const factory ClassCreateModel({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'trainer_id') required String trainerId,
    @JsonKey(name: 'schedule') required DateTime schedule,
    @JsonKey(name: 'capacity') required int capacity,
  }) = _ClassCreateModel;

  factory ClassCreateModel.fromJson(Map<String, Object?> json) =>
      _$ClassCreateModelFromJson(json);
}
