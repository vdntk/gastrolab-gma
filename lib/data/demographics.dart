class Demographics {
  String patientName, patientCode, gender, hospitalName, attDoctorName, refDoctorName, techName;
  int age;

//<editor-fold desc="Data Methods">
  Demographics({
    required this.patientName,
    required this.patientCode,
    required this.gender,
    required this.hospitalName,
    required this.attDoctorName,
    required this.refDoctorName,
    required this.techName,
    required this.age,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Demographics &&
          runtimeType == other.runtimeType &&
          patientName == other.patientName &&
          patientCode == other.patientCode &&
          gender == other.gender &&
          hospitalName == other.hospitalName &&
          attDoctorName == other.attDoctorName &&
          refDoctorName == other.refDoctorName &&
          techName == other.techName &&
          age == other.age);

  @override
  int get hashCode =>
      patientName.hashCode ^
      patientCode.hashCode ^
      gender.hashCode ^
      hospitalName.hashCode ^
      attDoctorName.hashCode ^
      refDoctorName.hashCode ^
      techName.hashCode ^
      age.hashCode;

  @override
  String toString() {
    return 'Demographics{' +
        ' patientName: $patientName,' +
        ' patientCode: $patientCode,' +
        ' gender: $gender,' +
        ' hospitalName: $hospitalName,' +
        ' attDoctorName: $attDoctorName,' +
        ' refDoctorName: $refDoctorName,' +
        ' techName: $techName,' +
        ' age: $age,' +
        '}';
  }

  Demographics copyWith({
    String? patientName,
    String? patientCode,
    String? gender,
    String? hospitalName,
    String? attDoctorName,
    String? refDoctorName,
    String? techName,
    int? age,
  }) {
    return Demographics(
      patientName: patientName ?? this.patientName,
      patientCode: patientCode ?? this.patientCode,
      gender: gender ?? this.gender,
      hospitalName: hospitalName ?? this.hospitalName,
      attDoctorName: attDoctorName ?? this.attDoctorName,
      refDoctorName: refDoctorName ?? this.refDoctorName,
      techName: techName ?? this.techName,
      age: age ?? this.age,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'patientName': this.patientName,
      'patientCode': this.patientCode,
      'gender': this.gender,
      'hospitalName': this.hospitalName,
      'attDoctorName': this.attDoctorName,
      'refDoctorName': this.refDoctorName,
      'techName': this.techName,
      'age': this.age,
    };
  }

  factory Demographics.fromMap(Map<String, dynamic> map) {
    return Demographics(
      patientName: map['patientName'] as String,
      patientCode: map['patientCode'] as String,
      gender: map['gender'] as String,
      hospitalName: map['hospitalName'] as String,
      attDoctorName: map['attDoctorName'] as String,
      refDoctorName: map['refDoctorName'] as String,
      techName: map['techName'] as String,
      age: map['age'] as int,
    );
  }

//</editor-fold>
}