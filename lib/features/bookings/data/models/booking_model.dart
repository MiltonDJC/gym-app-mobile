import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_app_mobile/features/bookings/domain/entities/booking_entity.dart';
import 'package:gym_app_mobile/features/bookings/domain/enums/booking_status.dart';
part 'booking_model.freezed.dart';
part 'booking_model.g.dart';

@freezed
abstract class BookingModel with _$BookingModel {
  const BookingModel._();

  const factory BookingModel({
    required String id,
    required String tenantId,
    required String classId,
    required String studentId,
    required BookingStatus status,
    required DateTime bookedAt,
  }) = _BookingModel;

  factory BookingModel.fromJson(Map<String, Object?> json) =>
      _$BookingModelFromJson(json);

  factory BookingModel.fromEntity(BookingEntity entity) => BookingModel(
    id: entity.id,
    tenantId: entity.tenantId,
    classId: entity.classId,
    studentId: entity.studentId,
    status: entity.status,
    bookedAt: entity.bookedAt,
  );

  BookingEntity toEntity() => BookingEntity(
    id: id,
    tenantId: tenantId,
    classId: classId,
    studentId: studentId,
    status: status,
    bookedAt: bookedAt,
  );
}
