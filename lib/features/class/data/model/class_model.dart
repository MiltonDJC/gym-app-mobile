import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_app_mobile/features/class/domain/entities/class_entity.dart';
part 'class_model.freezed.dart';
part 'class_model.g.dart';

@freezed
abstract class ClassModel with _$ClassModel {
  const ClassModel._();

  const factory ClassModel({
    required String id,
    required String tenantId,
    required String name,
    required String trainerId,
    required DateTime schedule,
    required int capacity,
    required bool isActive,
    required int? availableSpots,
  }) = _ClassModel;

  factory ClassModel.fromJson(Map<String, Object?> json) =>
      _$ClassModelFromJson(json);

  factory ClassModel.fromEntity(ClassEntity entity) => ClassModel(
    id: entity.id,
    tenantId: entity.tenantId,
    name: entity.name,
    trainerId: entity.trainerId,
    schedule: entity.schedule,
    capacity: entity.capacity,
    isActive: entity.isActive,
    availableSpots: entity.availableSpots,
  );

  ClassEntity toEntity() => ClassEntity(
    id: id,
    tenantId: tenantId,
    name: name,
    trainerId: trainerId,
    schedule: schedule,
    capacity: capacity,
    isActive: isActive,
  );
}
