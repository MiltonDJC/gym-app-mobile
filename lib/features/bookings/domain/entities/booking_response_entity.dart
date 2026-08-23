import 'package:gym_app_mobile/features/bookings/domain/enums/booking_status.dart';

class BookingResponseEntity {
  BookingResponseEntity({
    required this.id,
    required this.tenantId,
    required this.classId,
    this.studentId,
    required this.status,
    required this.bookedAt,
  });

  final String id;
  final String tenantId;
  final String classId;
  final String? studentId;
  final BookingStatus status;
  final DateTime bookedAt;
}
