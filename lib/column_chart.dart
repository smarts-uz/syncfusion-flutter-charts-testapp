import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ColumnChart extends StatelessWidget {
  const ColumnChart({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData(2010, 35, 23),
      ChartData(2011, 38, 49),
      ChartData(2012, 34, 12),
      ChartData(2013, 52, 33),
      ChartData(2014, 40, 30)
    ];

    return Container(
      child: SfCartesianChart(
        title: ChartTitle(text: 'Column Chart'),
        enableSideBySideSeriesPlacement: false,
        series: <ChartSeries<ChartData, int>>[
          ColumnSeries<ChartData, int>(
            dataSource: chartData,
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y,
            // Sets the corner radius
            borderRadius: const BorderRadius.all(Radius.circular(15)),
          ),
        ],
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.y1);

  final int x;
  final double y;
  final double y1;
}
