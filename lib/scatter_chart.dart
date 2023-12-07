import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ScatterChart extends StatelessWidget {
  const ScatterChart({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData(2010, 32),
      ChartData(2011, 40),
      ChartData(2012, 34),
      ChartData(2013, 52),
      ChartData(2014, 42),
      ChartData(2015, 38),
      ChartData(2016, 41),
    ];
    return Scaffold(
      body: Center(
        child: Container(
          child: SfCartesianChart(
            primaryXAxis: DateTimeAxis(),
            series: <ChartSeries>[
              // Renders scatter chart
              ScatterSeries<ChartData, int>(
                  dataSource: chartData,
                  xValueMapper: (ChartData data, _) => data.x,
                  yValueMapper: (ChartData data, _) => data.y)
            ],
          ),
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);

  final int x;
  final int? y;
}
