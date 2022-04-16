import 'package:flutter/material.dart';
import 'package:gma/data/report.data.dart';
import 'package:gma/database/database.dart';
import 'package:tekartik_app_flutter_sembast/sembast.dart';

class ReportsModel extends ChangeNotifier {
  static const String reportStoreName = 'reports';
  final _reportStore = intMapStoreFactory.store(reportStoreName);

  Future<Database> get _db async => await AppDatabase.instance.database;

  List<Report> _reports = [];

  Future<int> createNewReport(Report report) async {
    int _id = DateTime.now().millisecondsSinceEpoch;
    report.id = _id;
    await _reportStore.record(_id).put(await _db, report.toMap());
    _reports = await getAllReports();
    return _id;
  }

  Future<List<Report>> getAllReports() async {
    final finder = Finder(sortOrders: [SortOrder('time')]);
    final reportSnapshots = await _reportStore.find(
      await _db,
      finder: finder,
    );

    List<Report> reports = reportSnapshots.map((snapshot) {
      final report = Report.fromMap(snapshot.value);
      return report;
    }).toList();

    _reports = reports;
    notifyListeners();

    return reports;
  }

  Future<Report> getContact(int id) async {
    var record = await _reportStore.record(id).get(await _db);
    Report report = Report.fromMap(record!);
    return report;
  }

  Future<void> deleteReport(int id) async {
    await _reportStore.record(id).delete(await _db);

    await getAllReports();

    return;
  }

  int get reportsCount {
    return _reports.length;
  }

  List<Report> get reports {
    return _reports;
  }
}
