class GcsiScoreData {
  List<int> gcsi;

//<editor-fold desc="Data Methods">

  GcsiScoreData({
    required this.gcsi,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GcsiScoreData &&
          runtimeType == other.runtimeType &&
          gcsi == other.gcsi);

  @override
  int get hashCode => gcsi.hashCode;

  @override
  String toString() {
    return 'GcsiScoreData{' + ' gcsi: $gcsi,' + '}';
  }

  GcsiScoreData copyWith({
    List<int>? gcsi,
  }) {
    return GcsiScoreData(
      gcsi: gcsi ?? this.gcsi,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'gcsi': this.gcsi,
    };
  }

  factory GcsiScoreData.fromMap(Map<String, dynamic> map) {
    return GcsiScoreData(
      gcsi: map['gcsi'] as List<int>,
    );
  }

//</editor-fold>
}