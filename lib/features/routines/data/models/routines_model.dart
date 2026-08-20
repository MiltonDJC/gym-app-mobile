import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_app_mobile/features/exercises/data/models/exercises_model.dart';
part 'routines_model.freezed.dart';
part 'routines_model.g.dart';

@freezed
abstract class RoutinesModel with _$RoutinesModel {
  const factory RoutinesModel({
    required int id,
    required String title,
    required String? description,
    required List<ExercisesModel> exercises,
    required String? pdfUrl,
  }) = _RoutinesModel;

  factory RoutinesModel.fromJson(Map<String, Object?> json) =>
      _$RoutinesModelFromJson(json);
}
