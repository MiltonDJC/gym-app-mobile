import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_app_mobile/features/attendance/domain/entities/attendance_response_entity.dart';
part 'attendance_response_model.freezed.dart';
part 'attendance_response_model.g.dart';

@freezed
abstract class AttendanceResponseModel with _$AttendanceResponseModel {
  const AttendanceResponseModel._();

  const factory AttendanceResponseModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'tenant_id') required String tenantId,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'class_id') required String? classId,
    @JsonKey(name: 'checked_in_at') required DateTime checkedInAt,
  }) = _AttendanceResponseModel;

  factory AttendanceResponseModel.fromJson(Map<String, Object?> json) =>
      _$AttendanceResponseModelFromJson(json);

  factory AttendanceResponseModel.fromEntity(AttendanceResponseEntity entity) =>
      AttendanceResponseModel(
        id: entity.id,
        tenantId: entity.tenantId,
        userId: entity.userId,
        classId: entity.classId,
        checkedInAt: entity.checkedInAt,
      );

  AttendanceResponseEntity toEntity() => AttendanceResponseEntity(
    id: id,
    tenantId: tenantId,
    userId: userId,
    checkedInAt: checkedInAt,
  );
}
