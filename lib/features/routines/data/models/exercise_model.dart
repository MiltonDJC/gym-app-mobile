import 'package:freezed_annotation/freezed_annotation.dart';
part 'exercise_model.freezed.dart';
part 'exercise_model.g.dart';

@freezed
abstract class ExerciseModel with _$ExerciseModel {
  const factory ExerciseModel({
    required int id,
    required String name,
    required int sets,
    required int reps,
    required double? weight,
    required String? notes,
  }) = _ExerciseModel;

  factory ExerciseModel.fromJson(Map<String, Object?> json) =>
      _$ExerciseModelFromJson(json);
}
