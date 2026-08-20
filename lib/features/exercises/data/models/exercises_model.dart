import 'package:freezed_annotation/freezed_annotation.dart';
part 'exercises_model.freezed.dart';
part 'exercises_model.g.dart';

@freezed
abstract class ExercisesModel with _$ExercisesModel {
  const factory ExercisesModel({
    required int id,
    required String name,
    required int sets,
    required int reps,
    required double? weight,
    required String? notes,
  }) = _ExercisesModel;

  factory ExercisesModel.fromJson(Map<String, Object?> json) =>
      _$ExercisesModelFromJson(json);
}
