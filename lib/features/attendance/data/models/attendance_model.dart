import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_app_mobile/features/attendance/domain/entities/attendance_entity.dart';
part 'attendance_model.freezed.dart';
part 'attendance_model.g.dart';

@freezed
abstract class AttendanceModel with _$AttendanceModel {
  const AttendanceModel._();

  const factory AttendanceModel({
    required String id,
    required String tenantId,
    required String userId,
    required String? classId,
    required DateTime checkedInAt,
  }) = _AttendanceModel;

  factory AttendanceModel.fromJson(Map<String, Object?> json) =>
      _$AttendanceModelFromJson(json);

  factory AttendanceModel.fromEntity(AttendanceEntity entity) =>
      AttendanceModel(
        id: entity.id,
        tenantId: entity.tenantId,
        userId: entity.userId,
        classId: entity.classId,
        checkedInAt: entity.checkedInAt,
      );

  AttendanceEntity toEntity() => AttendanceEntity(
    id: id,
    tenantId: tenantId,
    userId: userId,
    checkedInAt: checkedInAt,
  );
}
