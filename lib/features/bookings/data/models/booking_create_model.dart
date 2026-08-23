import 'package:freezed_annotation/freezed_annotation.dart';
part 'booking_create_model.freezed.dart';
part 'booking_create_model.g.dart';

@freezed
abstract class BookingCreateModel with _$BookingCreateModel {
  const factory BookingCreateModel({
    @JsonKey(name: 'class_id') required String classId,
    @JsonKey(name: 'student_id') String? studentId,
  }) = _BookingCreateModel;

  factory BookingCreateModel.fromJson(Map<String, Object?> json) =>
      _$BookingCreateModelFromJson(json);
}
