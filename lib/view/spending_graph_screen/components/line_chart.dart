import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:paybill/utils/const.dart';

class LineChartWidget extends StatelessWidget {
  LineChartWidget({Key? key}) : super(key: key);
  final List<Color> gradientColor = [
    Color.fromARGB(255, 91, 105, 235),
    Color.fromARGB(255, 177, 185, 240),
  ];

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff68737d),
      fontWeight: FontWeight.bold,
      fontSize: 10,
    );
    Widget text;
    switch (value.toInt()) {
      case 1:
        text = const Text('May', style: style);
        break;
      case 3:
        text = const Text('Jun', style: style);
        break;
      case 5:
        text = const Text('Jul', style: style);
        break;
      case 7:
        text = const Text('Aug', style: style);
        break;
      case 9:
        text = const Text('Sep', style: style);
        break;
      case 11:
        text = const Text('Oct', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color.fromARGB(255, 191, 193, 195),
      fontWeight: FontWeight.bold,
      fontSize: 10,
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = '50€';
        break;
      case 3:
        text = '500€';
        break;
      case 5:
        text = '1000€';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  @override
  Widget build(BuildContext context) => LineChart(
        LineChartData(
          // titlesData: FlTitlesData(
          //   show: true,
          //   topTitles: AxisTitles(drawBehindEverything: true),
          //   bottomTitles: AxisTitles(drawBehindEverything: true),
          //   rightTitles: AxisTitles(drawBehindEverything: true),
          //   leftTitles: AxisTitles(drawBehindEverything: true),
          // ),
          gridData: FlGridData(
            show: true,
            drawHorizontalLine: true,
            drawVerticalLine: false,
          ),
          borderData: FlBorderData(
            show: false,
          ),
          minX: 0,
          maxX: 11,
          minY: 0,
          maxY: 6,
          titlesData: FlTitlesData(
            show: true,
            rightTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            topTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 30,
                interval: 1,
                getTitlesWidget: bottomTitleWidgets,
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                interval: 1,
                getTitlesWidget: leftTitleWidgets,
                reservedSize: 42,
              ),
            ),
          ),
          lineBarsData: [
            LineChartBarData(
              isStepLineChart: false,
              isCurved: true,
              isStrokeCapRound: true,
              barWidth: 4,
              color: primaryColor,
              dotData: FlDotData(show: false),
              belowBarData: BarAreaData(
                gradient:
                    const LinearGradient(begin: Alignment.bottomRight, stops: [
                  0.1,
                  0.9
                ], colors: [
                  Color.fromARGB(255, 209, 214, 253),
                  Color.fromARGB(255, 177, 185, 240),
                ]),
                show: true,
                spotsLine: BarAreaSpotsLine(show: false),
                color: const Color.fromARGB(255, 37, 43, 96),
              ),
              spots: [
                FlSpot(0, 3),
                FlSpot(2.6, 2),
                FlSpot(4.9, 5),
                FlSpot(6.8, 3.1),
                FlSpot(8, 4),
                FlSpot(9.5, 3),
                FlSpot(11, 4),
              ],
            ),
          ],
        ),
      );
}
