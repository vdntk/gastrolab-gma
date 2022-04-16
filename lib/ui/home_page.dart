import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:gma/data/model_report.dart';
import 'package:gma/ui/components/reports_list.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Provider.of<ReportsModel>(context, listen: false).getAllReports();
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(child: ReportsList()),
        floatingActionButton: SpeedDial(
          child: const Icon(Icons.add),
          children: [
            SpeedDialChild(
              onTap: () {},
              label: "EGG",
              child: Image.asset(
                'images/stomach.png',
                height: 25,
              ),
            ),
            SpeedDialChild(
              onTap: () {},
              label: "EVG",
              child: Icon(Icons.female),
            )
          ],
        ),
      ),
    );
  }
}
