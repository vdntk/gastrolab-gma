import 'package:flutter/material.dart';
import 'package:gma/data/model_report.dart';
import 'package:provider/provider.dart';

class ReportsList extends StatefulWidget {
  ReportsList({Key? key}) : super(key: key);

  @override
  State<ReportsList> createState() => _ReportsListState();
}

class _ReportsListState extends State<ReportsList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ReportsModel>(builder: (context, reportsData, child) {
      if (reportsData.reportsCount > 0) {
        return ListView(
          shrinkWrap: true,
        );
      } else {
        return const Center(
          child: Text("No reports. Click '+' to create a new report"),
        );
      }
    });
  }
}
