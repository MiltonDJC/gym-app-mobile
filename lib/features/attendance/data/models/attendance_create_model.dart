import 'package:freezed_annotation/freezed_annotation.dart';
part 'attendance_create_model.freezed.dart';
part 'attendance_create_model.g.dart';

@freezed
abstract class AttendanceCreateModel with _$AttendanceCreateModel {
  const factory AttendanceCreateModel({
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'class_id') String? classId,
  }) = _AttendanceCreateModel;

  factory AttendanceCreateModel.fromJson(Map<String, Object?> json) =>
      _$AttendanceCreateModelFromJson(json);
}
