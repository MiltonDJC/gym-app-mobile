import 'package:freezed_annotation/freezed_annotation.dart';
part 'attendance_model.freezed.dart';
part 'attendance_model.g.dart';

@freezed
abstract class AttendanceModel with _$AttendanceModel {
  const factory AttendanceModel({
    required int id,
    required int userId,
    required DateTime checkInTime,
  }) = _AttendanceModel;

  factory AttendanceModel.fromJson(Map<String, Object?> json) =>
      _$AttendanceModelFromJson(json);
}
