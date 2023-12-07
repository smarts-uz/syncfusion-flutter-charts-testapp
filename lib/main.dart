import 'package:charts_flutter/column_chart.dart';
import 'package:charts_flutter/doughnut%20_chart.dart';
import 'package:charts_flutter/pie_chart.dart';
import 'package:charts_flutter/radial_chart.dart';
import 'package:charts_flutter/scatter_chart.dart';
import 'package:charts_flutter/spline_chart.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'area_chart.dart';
import 'fast_chart.dart';
import 'line_chart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Syncfusion Charts',
      home: MyHomePage(title: 'Syncfusion Charts'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({required this.title, super.key});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              LineChart(),
              AreChart(),
              SplineChart(),
              ColumnChart(),
              PieCharts(),
            ],
          ),
          Row(
            children: [
              DoughnutChart(),
              RadialChart(),
            ],
          )
        ],
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);

  final String x;
  final double y;
  final Color color;
}
