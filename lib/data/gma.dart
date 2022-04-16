import 'dart:ffi';

class GmaSubtypingData {
  List<List<double>> freq;
  int waterload, respRate;

//<editor-fold desc="Data Methods">
  GmaSubtypingData({
    required this.freq,
    required this.waterload,
    required this.respRate,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GmaSubtypingData &&
          runtimeType == other.runtimeType &&
          freq == other.freq &&
          waterload == other.waterload &&
          respRate == other.respRate);

  @override
  int get hashCode => freq.hashCode ^ waterload.hashCode ^ respRate.hashCode;

  @override
  String toString() {
    return 'GmaSubtypingData{' +
        ' freq: $freq,' +
        ' waterload: $waterload,' +
        ' respRate: $respRate,' +
        '}';
  }

  GmaSubtypingData copyWith({
    List<List<double>>? freq,
    int? waterload,
    int? respRate,
  }) {
    return GmaSubtypingData(
      freq: freq ?? this.freq,
      waterload: waterload ?? this.waterload,
      respRate: respRate ?? this.respRate,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'freq': this.freq,
      'waterload': this.waterload,
      'respRate': this.respRate,
    };
  }

  factory GmaSubtypingData.fromMap(Map<String, dynamic> map) {
    return GmaSubtypingData(
      freq: map['freq'] as List<List<double>>,
      waterload: map['waterload'] as int,
      respRate: map['respRate'] as int,
    );
  }

//</editor-fold>
}