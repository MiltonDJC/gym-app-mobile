import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_app_mobile/features/bookings/domain/entities/booking_response_entity.dart';
import 'package:gym_app_mobile/features/bookings/domain/enums/booking_status.dart';
part 'booking_response_model.freezed.dart';
part 'booking_response_model.g.dart';

@freezed
abstract class BookingResponseModel with _$BookingResponseModel {
  const BookingResponseModel._();

  const factory BookingResponseModel({
    required String id,
    @JsonKey(name: 'tenant_id') required String tenantId,
    @JsonKey(name: 'class_id') required String classId,
    @JsonKey(name: 'student_id') String? studentId,
    required BookingStatus status,
    @JsonKey(name: 'booked_at') required DateTime bookedAt,
  }) = _BookingResponseModel;

  factory BookingResponseModel.fromJson(Map<String, Object?> json) =>
      _$BookingResponseModelFromJson(json);

  factory BookingResponseModel.fromEntity(BookingResponseEntity entity) =>
      BookingResponseModel(
        id: entity.id,
        tenantId: entity.tenantId,
        classId: entity.classId,
        studentId: entity.studentId,
        status: entity.status,
        bookedAt: entity.bookedAt,
      );

  BookingResponseEntity toEntity() => BookingResponseEntity(
    id: id,
    tenantId: tenantId,
    classId: classId,
    studentId: studentId,
    status: status,
    bookedAt: bookedAt,
  );
}
