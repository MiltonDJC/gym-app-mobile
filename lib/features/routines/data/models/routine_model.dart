import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_app_mobile/features/routines/data/models/routine_exercise_model.dart';
import 'package:gym_app_mobile/features/routines/domain/entities/routine_entity.dart';
import 'package:gym_app_mobile/features/routines/domain/entities/routine_exercise_entity.dart';
part 'routine_model.freezed.dart';
part 'routine_model.g.dart';

@freezed
abstract class RoutineModel with _$RoutineModel {
  const RoutineModel._();

  const factory RoutineModel({
    required String id,
    required String tenantId,
    required String trainerId,
    required String studentId,
    required String name,
    required String? description,
    required DateTime createdAt,
    required List<RoutineExerciseModel> exercises,
  }) = _RoutineModel;

  factory RoutineModel.fromJson(Map<String, Object?> json) =>
      _$RoutineModelFromJson(json);

  factory RoutineModel.fromEntity(RoutineEntity entity) => RoutineModel(
    id: entity.id,
    tenantId: entity.tenantId,
    trainerId: entity.trainerId,
    studentId: entity.studentId,
    name: entity.name,
    description: entity.description,
    createdAt: entity.createdAt,
    exercises: entity.exercises
        .map(
          (exerciseEntity) => RoutineExerciseModel(
            id: exerciseEntity.id,
            exerciseName: exerciseEntity.exerciseName,
            sets: exerciseEntity.sets,
            reps: exerciseEntity.reps,
            weight: exerciseEntity.weight,
            restSeconds: exerciseEntity.restSeconds,
            notes: exerciseEntity.notes,
            order: exerciseEntity.order,
          ),
        )
        .toList(),
  );

  RoutineEntity toEntity() => RoutineEntity(
    id: id,
    tenantId: tenantId,
    trainerId: trainerId,
    studentId: studentId,
    name: name,
    createdAt: createdAt,
    exercises: exercises
        .map(
          (exerciseModel) => RoutineExerciseEntity(
            id: exerciseModel.id,
            exerciseName: exerciseModel.exerciseName,
            sets: exerciseModel.sets,
            reps: exerciseModel.reps,
            weight: exerciseModel.weight,
            restSeconds: exerciseModel.restSeconds,
            notes: exerciseModel.notes,
            order: exerciseModel.order,
          ),
        )
        .toList(),
  );
}
