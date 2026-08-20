import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_app_mobile/features/routines/data/models/exercise_model.dart';
part 'routine_model.freezed.dart';
part 'routine_model.g.dart';

@freezed
abstract class RoutineModel with _$RoutineModel {
  const factory RoutineModel({
    required int id,
    required String title,
    required String? description,
    required List<ExerciseModel> exercises,
    required String? pdfUrl,
  }) = _RoutineModel;

  factory RoutineModel.fromJson(Map<String, Object?> json) =>
      _$RoutineModelFromJson(json);
}
