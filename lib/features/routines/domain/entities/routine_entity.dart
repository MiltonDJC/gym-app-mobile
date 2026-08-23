import 'package:gym_app_mobile/features/routines/domain/entities/routine_exercise_entity.dart';

class RoutineEntity {
  RoutineEntity({
    required this.id,
    required this.tenantId,
    required this.trainerId,
    required this.studentId,
    required this.name,
    this.description,
    required this.createdAt,
    required this.exercises,
  });

  final String id;
  final String tenantId;
  final String trainerId;
  final String studentId;
  final String name;
  final String? description;
  final DateTime createdAt;
  final List<RoutineExerciseEntity> exercises;
}
