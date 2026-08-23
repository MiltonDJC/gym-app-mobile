class ClassEntity {
  const ClassEntity({
    required this.id,
    required this.tenantId,
    required this.name,
    required this.trainerId,
    required this.schedule,
    required this.capacity,
    required this.isActive,
    this.availableSpots,
  });

  final String id;
  final String tenantId;
  final String name;
  final String trainerId;
  final DateTime schedule;
  final int capacity;
  final bool isActive;
  final int? availableSpots;
}
