import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_first_project/constants.dart';
import 'package:fl_chart/fl_chart.dart';

class ChartScreen extends StatelessWidget {
  ChartScreen({Key? key}) : super(key: key);

  final List<Color> chartLineColors = [
    const Color(0xFF20bf6b),
    const Color(0xFF20bf6b),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, right: 50),
                    child: LineChart(
                      LineChartData(
                        borderData: FlBorderData(border: Border.all(width: 0)),
                        titlesData: FlTitlesData(
                          show: true,
                          topTitles: SideTitles(
                            showTitles: false,
                          ),
                          rightTitles: SideTitles(showTitles: false),
                          leftTitles: SideTitles(
                            getTitles: (value) {
                              switch (value.toInt()) {
                                case 1:
                                  return '0';
                                case 3:
                                  return '25';
                                case 5:
                                  return '50';
                                case 7:
                                  return '75';
                              }
                              return '';
                            },
                            // margin: 12,
                            // reservedSize: 32,
                            showTitles: true,
                            getTextStyles: (context, value) => const TextStyle(
                                color: bottomNavItemColor,
                                // fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          bottomTitles: SideTitles(
                            getTextStyles: (context, value) => const TextStyle(
                                color: bottomNavItemColor,
                                // fontWeight: FontWeight.bold,
                                fontSize: 14),
                            showTitles: true,
                            getTitles: (value) {
                              switch (value.toInt()) {
                                case 0:
                                  return '         Mon';

                                case 6:
                                  return '               Sun';
                              }
                              return '';
                            },
                            // margin: 12,
                          ),
                        ),
                        minX: 0,
                        maxX: 6,
                        minY: 1,
                        maxY: 8,
                        gridData: FlGridData(
                          show: false,
                        ),
                        lineBarsData: [
                          LineChartBarData(
                            show: true,
                            spots: [
                              const FlSpot(0, 3.5),
                              const FlSpot(1, 3),
                              const FlSpot(2, 4.1),
                              const FlSpot(3, 3.6),
                              const FlSpot(4, 4.5),
                              const FlSpot(5, 5),
                              const FlSpot(6, 4.7),
                              const FlSpot(7, 4.2),
                            ],
                            isCurved: true,
                            colors: chartLineColors,
                            barWidth: 5,
                            dotData: FlDotData(
                              show: false,
                            ),
                            belowBarData: BarAreaData(
                              show: true,
                              colors: chartLineColors
                                  .map((color) => color.withOpacity(0.3))
                                  .toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 1,
              child: ListView(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                          colors: [
                            cardColor,
                            Colors.black,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                    ),
                    child: const ListTile(
                      leading: FaIcon(
                        FontAwesomeIcons.gamepad,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Game',
                        style: cardTextStyle,
                      ),
                      subtitle: Text(
                        'Steam monthly payment',
                        style: subTextStyle,
                      ),
                      trailing: Text(
                        '\$25',
                        style: cardTextStyle,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                          colors: [
                            cardColor,
                            Colors.black,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                    ),
                    child: const ListTile(
                      leading: FaIcon(
                        FontAwesomeIcons.taxi,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Taxi',
                        style: cardTextStyle,
                      ),
                      subtitle: Text(
                        'Taxi payment to office',
                        style: subTextStyle,
                      ),
                      trailing: const Text(
                        '\$15',
                        style: cardTextStyle,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                          colors: [
                            cardColor,
                            Colors.black,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                    ),
                    child: const ListTile(
                      leading: FaIcon(
                        FontAwesomeIcons.tv,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Netflix',
                        style: cardTextStyle,
                      ),
                      subtitle: Text(
                        'Monthly payment of Netflix',
                        style: subTextStyle,
                      ),
                      trailing: Text(
                        '\$9.99',
                        style: cardTextStyle,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                          colors: [
                            cardColor,
                            Colors.black,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                    ),
                    child: const ListTile(
                      leading: FaIcon(
                        FontAwesomeIcons.plane,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Plane',
                        style: cardTextStyle,
                      ),
                      subtitle: Text(
                        'Plane Tickets',
                        style: subTextStyle,
                      ),
                      trailing: Text(
                        '\$215',
                        style: cardTextStyle,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                          colors: [
                            cardColor,
                            Colors.black,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                    ),
                    child: const ListTile(
                      leading: FaIcon(
                        FontAwesomeIcons.airbnb,
                        color: Colors.white,
                      ),
                      title: Text(
                        'AirBnb',
                        style: cardTextStyle,
                      ),
                      subtitle: Text(
                        'Payment for hotel',
                        style: subTextStyle,
                      ),
                      trailing: Text(
                        '\$48.75',
                        style: cardTextStyle,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                          colors: [
                            cardColor,
                            Colors.black,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                    ),
                    child: const ListTile(
                      leading: FaIcon(
                        FontAwesomeIcons.shoppingCart,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Shopping',
                        style: cardTextStyle,
                      ),
                      subtitle: Text(
                        'Payment for shopping',
                        style: subTextStyle,
                      ),
                      trailing: Text(
                        '\$422.19',
                        style: cardTextStyle,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                          colors: [
                            cardColor,
                            Colors.black,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                    ),
                    child: const ListTile(
                      leading: FaIcon(
                        FontAwesomeIcons.taxi,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Taxi',
                        style: cardTextStyle,
                      ),
                      subtitle: Text(
                        'Taxi payment to office',
                        style: subTextStyle,
                      ),
                      trailing: Text(
                        '\$15',
                        style: cardTextStyle,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                          colors: [
                            cardColor,
                            Colors.black,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                    ),
                    child: const ListTile(
                      leading: FaIcon(
                        FontAwesomeIcons.tv,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Netflix',
                        style: cardTextStyle,
                      ),
                      subtitle: Text(
                        'Monthly payment of Netflix',
                        style: subTextStyle,
                      ),
                      trailing: Text(
                        '\$9.99',
                        style: cardTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
