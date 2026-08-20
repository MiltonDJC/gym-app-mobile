import 'package:freezed_annotation/freezed_annotation.dart';
part 'booking_model.freezed.dart';
part 'booking_model.g.dart';

@freezed
abstract class BookingModel with _$BookingModel {
  const factory BookingModel({
    required int id,
    required int classId,
    required int userId,
    required DateTime bookingDate,
    required String status,
    // required GymClass? gymClass,
  }) = _BookingModel;

  factory BookingModel.fromJson(Map<String, Object?> json) =>
      _$BookingModelFromJson(json);
}
