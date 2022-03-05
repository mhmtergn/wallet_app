import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_first_project/screen/alarm.dart';
import 'package:my_first_project/screen/chart.dart';
import 'package:my_first_project/screen/qrcode_screen.dart';
import 'constants.dart';
import 'package:bottom_bar/bottom_bar.dart';
import '../constants.dart';
import 'screen/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentPage = 0;

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(
        onTap: (int index) {
          setState(
            () {
              _pageController.jumpToPage(index);
              _currentPage = index;
            },
          );
        },
        selectedIndex: _currentPage,
        showActiveBackgroundColor: true,
        itemPadding: const EdgeInsets.all(15),
        items: <BottomBarItem>[
          BottomBarItem(
            icon:
                const FaIcon(FontAwesomeIcons.home, color: bottomNavItemColor),
            darkActiveColor: Colors.red,
            title: const Text('Home'),
            activeColor: bottomNavItemColor,
          ),
          BottomBarItem(
            icon:
                const FaIcon(FontAwesomeIcons.bolt, color: bottomNavItemColor),
            title: const Text('Chart'),
            activeColor: bottomNavItemColor,
          ),
          BottomBarItem(
            icon: const FaIcon(FontAwesomeIcons.qrcode,
                color: bottomNavItemColor),
            title: const Text('Profile'),
            activeColor: bottomNavItemColor,
          ),
          BottomBarItem(
            icon:
                const FaIcon(FontAwesomeIcons.bell, color: bottomNavItemColor),
            title: const Text('Alert'),
            activeColor: bottomNavItemColor,
          ),
        ],
      ),
      backgroundColor: kMainColor,
      body: PageView(
        controller: _pageController,
        children: [
          const Home(),
          ChartScreen(),
          const QrCode(),
          const AlarmScreen(),
        ],
        onPageChanged: (index) {
          setState(() {
            _currentPage = index;
          });
        },
      ),
    );
  }
}
