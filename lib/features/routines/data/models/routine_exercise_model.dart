import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_app_mobile/features/routines/domain/entities/routine_exercise_entity.dart';
part 'routine_exercise_model.freezed.dart';
part 'routine_exercise_model.g.dart';

@freezed
abstract class RoutineExerciseModel with _$RoutineExerciseModel {
  const RoutineExerciseModel._();

  const factory RoutineExerciseModel({
    required String id,
    required String exerciseName,
    required int sets,
    required int reps,
    required double? weight,
    required int? restSeconds,
    required String? notes,
    required int order,
  }) = _RoutineExerciseModel;

  factory RoutineExerciseModel.fromJson(Map<String, Object?> json) =>
      _$RoutineExerciseModelFromJson(json);

  factory RoutineExerciseModel.fromEntity(RoutineExerciseEntity entity) =>
      RoutineExerciseModel(
        id: entity.id,
        exerciseName: entity.exerciseName,
        sets: entity.sets,
        reps: entity.reps,
        weight: entity.weight,
        restSeconds: entity.restSeconds,
        notes: entity.notes,
        order: entity.order,
      );

  RoutineExerciseEntity toEntity() => RoutineExerciseEntity(
    id: id,
    exerciseName: exerciseName,
    sets: sets,
    reps: reps,
    order: order,
  );
}
