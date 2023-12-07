import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'main.dart';

class LineChart extends StatelessWidget {
  const LineChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 300,
      child: SfCartesianChart(
        title: ChartTitle(text: 'Line Chart'),
        primaryXAxis: CategoryAxis(),
        series: <ChartSeries>[
          LineSeries<ChartData, String>(
              dataSource: [
                ChartData('Jan', 35, Colors.red),
                ChartData('Feb', 28, Colors.green),
                ChartData('Mar', 34, Colors.blue),
                ChartData('Apr', 32, Colors.pink),
                ChartData('May', 40, Colors.black)
              ],
              // Bind the color for all the data points from the data source
              pointColorMapper: (ChartData data, _) => data.color,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y)
        ],
      ),
    );
  }
}
