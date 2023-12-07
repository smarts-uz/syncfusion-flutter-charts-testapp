import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PieCharts extends StatelessWidget {
  const PieCharts({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('Jan', 35, Colors.red),
      ChartData('Feb', 28, Colors.green),
      ChartData('Mar', 34, Colors.blue),
      ChartData('Apr', 32, Colors.pink),
      ChartData('May', 40, Colors.black)
    ];
    return Container(
      width: 300,
      height: 300,
      child: SfCircularChart(
        title: ChartTitle(text: 'Line Chart'),
        series: <CircularSeries>[
          // Render pie chart
          PieSeries<ChartData, String>(
            dataSource: chartData,
            pointColorMapper: (ChartData data, _) => data.color,
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y,
            radius: '100%',
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
