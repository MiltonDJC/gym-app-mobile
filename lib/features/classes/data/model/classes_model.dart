import 'package:freezed_annotation/freezed_annotation.dart';
part 'classes_model.freezed.dart';
part 'classes_model.g.dart';

@freezed
abstract class ClassesModel with _$ClassesModel {
  const factory ClassesModel({
    required int id,
    required String name,
    required String description,
    required int? trainerId,
    required int? capacity,
    required int availableSpots,
    required DateTime startTime,
    required DateTime endTime,
  }) = _ClassesModel;

  factory ClassesModel.fromJson(Map<String, Object?> json) =>
      _$ClassesModelFromJson(json);
}
