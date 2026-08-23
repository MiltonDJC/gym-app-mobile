class RoutineExerciseEntity {
  const RoutineExerciseEntity({
    required this.id,
    required this.exerciseName,
    required this.sets,
    required this.reps,
    this.weight,
    this.restSeconds,
    this.notes,
    required this.order,
  });

  final String id;
  final String exerciseName;
  final int sets;
  final int reps;
  final double? weight;
  final int? restSeconds;
  final String? notes;
  final int order;
}
