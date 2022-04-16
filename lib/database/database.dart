import 'dart:async';

import 'package:sembast/sembast.dart';
import 'package:tekartik_app_flutter_sembast/sembast.dart';

class AppDatabase {
  static final AppDatabase _singleton = AppDatabase._();
  static AppDatabase get instance => _singleton;
  Completer<Database>? _dbOpenCompleter;

  AppDatabase._();

  Future<Database> get database async {
    if (_dbOpenCompleter == null) {
      _dbOpenCompleter = Completer();
      _openDatabase();
    }
    return _dbOpenCompleter!.future;
  }

  Future _openDatabase() async {
    var factory = getDatabaseFactory();
    var db = await factory.openDatabase('app-database.db');
    _dbOpenCompleter!.complete(db);
  }
}