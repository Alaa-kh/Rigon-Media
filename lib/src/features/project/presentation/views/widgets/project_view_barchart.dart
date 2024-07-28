import 'package:rigon/src/core/constants/packages.dart';

class ProjectViewBarChart extends StatelessWidget {
  const ProjectViewBarChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BarChart(BarChartData(
    alignment: BarChartAlignment.spaceBetween,
    titlesData: FlTitlesData(
        show: true,
        leftTitles:
            const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        rightTitles:
            const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        topTitles:
            const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        bottomTitles: AxisTitles(
            sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (double value, TitleMeta meta) {
                  switch (value) {
                    case 0:
                      return Text('Jan', style: Styles.textSizeChart);
                    case 1:
                      return Text('Feb', style: Styles.textSizeChart);
                    case 2:
                      return Text('Mar', style: Styles.textSizeChart);
                    case 3:
                      return Text('Apr',
                          style: Styles.titleSmall
                              .copyWith(fontWeight: FontWeight.w500));
                    case 4:
                      return Text('May', style: Styles.textSizeChart);
                    case 5:
                      return Text('Jun', style: Styles.textSizeChart);
          
                    default:
                      return const Text('');
                  }
                }))),
    gridData: const FlGridData(show: false),
    borderData: FlBorderData(show: false),
    barGroups: [
      BarChartGroupData(x: 0, barRods: [
        BarChartRodData(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8)),
            width: 48.w,
            toY: 3,
            color: grey300Clr)
      ]),
      BarChartGroupData(x: 1, barRods: [
        BarChartRodData(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8)),
            width: 48.w,
            toY: 4,
            color: grey300Clr)
      ]),
      BarChartGroupData(x: 2, barRods: [
        BarChartRodData(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8)),
            width: 48.w,
            toY: 2,
            color: grey300Clr)
      ]),
      BarChartGroupData(x: 3, barRods: [
        BarChartRodData(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8)),
            width: 48.w,
            toY: 5,
            color: darkClr)
      ]),
      BarChartGroupData(x: 4, barRods: [
        BarChartRodData(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8)),
            width: 48.w,
            toY: 4,
            color: grey300Clr)
      ]),
      BarChartGroupData(x: 5, barRods: [
        BarChartRodData(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8)),
            width: 48.w,
            toY: 4,
            color: grey300Clr)
      ])
    ])).animate().slideX(duration: 1000.ms);
  }
}
