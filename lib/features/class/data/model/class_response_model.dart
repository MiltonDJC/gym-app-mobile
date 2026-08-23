import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_app_mobile/features/class/domain/entities/class_response_entity.dart';
part 'class_response_model.freezed.dart';
part 'class_response_model.g.dart';

@freezed
abstract class ClassResponseModel with _$ClassResponseModel {
  const ClassResponseModel._();

  const factory ClassResponseModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'tenant_id') required String tenantId,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'trainer_id') required String trainerId,
    @JsonKey(name: 'schedule') required DateTime schedule,
    @JsonKey(name: 'capacity') required int capacity,
    @JsonKey(name: 'is_active') required bool isActive,
    @JsonKey(name: 'available_spots') int? availableSpots,
  }) = _ClassResponseModel;

  factory ClassResponseModel.fromJson(Map<String, Object?> json) =>
      _$ClassResponseModelFromJson(json);

  factory ClassResponseModel.fromEntity(ClassResponseEntity entity) =>
      ClassResponseModel(
        id: entity.id,
        tenantId: entity.tenantId,
        name: entity.name,
        trainerId: entity.trainerId,
        schedule: entity.schedule,
        capacity: entity.capacity,
        isActive: entity.isActive,
        availableSpots: entity.availableSpots,
      );

  ClassResponseEntity toEntity() => ClassResponseEntity(
    id: id,
    tenantId: tenantId,
    name: name,
    trainerId: trainerId,
    schedule: schedule,
    capacity: capacity,
    isActive: isActive,
  );
}
