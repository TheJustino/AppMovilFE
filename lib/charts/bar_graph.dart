

import 'package:app_movil/charts/bar_data.dart';
//import 'package:app_movil/charts/line_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyBarGraph extends StatelessWidget {
  final List weeklySummary;
  const MyBarGraph({
    super.key,
    required this.weeklySummary,
  });

  @override
  Widget build(BuildContext context) {
    //inicio de la barra con los datos
    bar_data myBarData = bar_data(
      line1Amount: weeklySummary[0],
      line2Amount: weeklySummary[1],
    );
    myBarData.initializeBar_data();

    return BarChart(
      BarChartData(
        maxY: 100,
        minY: 0,
        gridData: const FlGridData(show: false),
        borderData: FlBorderData(show: false),
        titlesData: const FlTitlesData(
          show: true,
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(
            sideTitles:
                SideTitles(showTitles: true, getTitlesWidget: getBottomTitles),
          ),
        ),
        barGroups: myBarData.barData
            .map(
              (data) => BarChartGroupData(
                showingTooltipIndicators: [
                  0
                ],
                x: data.x,
                barRods: [
                  BarChartRodData(
                    toY: data.y,
                    color: Colors.red,
                    width: 50,
                    borderRadius: BorderRadius.circular(0),
                    backDrawRodData: BackgroundBarChartRodData(
                      show: true,
                      toY: 100,
                      color: Colors.grey,
                    ),
                    
                  ),
                ],
                
              ),
            )
            .toList(),
      ),
    );
  }
}

Widget getBottomTitles(double value, TitleMeta meta) {
  const style = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );

  Widget text;
  switch (value.toInt()) {
    case 0:
      text = const Text('Linea No.1', style: style);
      break;
    case 1:
      text = const Text('Linea No.2', style: style);
      break;
    default:
      text = const Text('', style: style);
      break;
  }

  return SideTitleWidget(axisSide: meta.axisSide, child: text);
}




