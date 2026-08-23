class AttendanceEntity {
  AttendanceEntity({
    required this.id,
    required this.tenantId,
    required this.userId,
    this.classId,
    required this.checkedInAt,
  });

  final String id;
  final String tenantId;
  final String userId;
  final String? classId;
  final DateTime checkedInAt;
}
