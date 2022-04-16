class LabQualiData {
  double gcsi;
  List<String> ges, gastropanel;
  String lds, bss, hfp, ubt, sat, prakriti;

//<editor-fold desc="Data Methods">

  LabQualiData({
    required this.gcsi,
    required this.ges,
    required this.gastropanel,
    required this.lds,
    required this.bss,
    required this.hfp,
    required this.ubt,
    required this.sat,
    required this.prakriti,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LabQualiData &&
          runtimeType == other.runtimeType &&
          gcsi == other.gcsi &&
          ges == other.ges &&
          gastropanel == other.gastropanel &&
          lds == other.lds &&
          bss == other.bss &&
          hfp == other.hfp &&
          ubt == other.ubt &&
          sat == other.sat &&
          prakriti == other.prakriti);

  @override
  int get hashCode =>
      gcsi.hashCode ^
      ges.hashCode ^
      gastropanel.hashCode ^
      lds.hashCode ^
      bss.hashCode ^
      hfp.hashCode ^
      ubt.hashCode ^
      sat.hashCode ^
      prakriti.hashCode;

  @override
  String toString() {
    return 'LabQualiData{' +
        ' gcsi: $gcsi,' +
        ' ges: $ges,' +
        ' gastropanel: $gastropanel,' +
        ' lds: $lds,' +
        ' bss: $bss,' +
        ' hfp: $hfp,' +
        ' ubt: $ubt,' +
        ' sat: $sat,' +
        ' prakriti: $prakriti,' +
        '}';
  }

  LabQualiData copyWith({
    double? gcsi,
    List<String>? ges,
    List<String>? gastropanel,
    String? lds,
    String? bss,
    String? hfp,
    String? ubt,
    String? sat,
    String? prakriti,
  }) {
    return LabQualiData(
      gcsi: gcsi ?? this.gcsi,
      ges: ges ?? this.ges,
      gastropanel: gastropanel ?? this.gastropanel,
      lds: lds ?? this.lds,
      bss: bss ?? this.bss,
      hfp: hfp ?? this.hfp,
      ubt: ubt ?? this.ubt,
      sat: sat ?? this.sat,
      prakriti: prakriti ?? this.prakriti,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'gcsi': this.gcsi,
      'ges': this.ges,
      'gastropanel': this.gastropanel,
      'lds': this.lds,
      'bss': this.bss,
      'hfp': this.hfp,
      'ubt': this.ubt,
      'sat': this.sat,
      'prakriti': this.prakriti,
    };
  }

  factory LabQualiData.fromMap(Map<String, dynamic> map) {
    return LabQualiData(
      gcsi: map['gcsi'] as double,
      ges: map['ges'] as List<String>,
      gastropanel: map['gastropanel'] as List<String>,
      lds: map['lds'] as String,
      bss: map['bss'] as String,
      hfp: map['hfp'] as String,
      ubt: map['ubt'] as String,
      sat: map['sat'] as String,
      prakriti: map['prakriti'] as String,
    );
  }

//</editor-fold>
}