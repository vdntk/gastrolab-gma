import 'package:gma/data/demographics.dart';

class Report {
  int id;
  int time;
  Demographics demographics;

//<editor-fold desc="Data Methods">

  Report({
    required this.id,
    required this.time,
    required this.demographics,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Report &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          time == other.time &&
          demographics == other.demographics);

  @override
  int get hashCode => id.hashCode ^ time.hashCode ^ demographics.hashCode;

  @override
  String toString() {
    return 'Report{' +
        ' id: $id,' +
        ' time: $time,' +
        ' demographics: $demographics,' +
        '}';
  }

  Report copyWith({
    int? id,
    int? time,
    Demographics? demographics,
  }) {
    return Report(
      id: id ?? this.id,
      time: time ?? this.time,
      demographics: demographics ?? this.demographics,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'time': this.time,
      'demographics': this.demographics,
    };
  }

  factory Report.fromMap(Map<String, dynamic> map) {
    return Report(
      id: map['id'] as int,
      time: map['time'] as int,
      demographics: map['demographics'] as Demographics,
    );
  }

//</editor-fold>
}