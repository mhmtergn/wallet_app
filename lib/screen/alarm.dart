import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_first_project/constants.dart';

class AlarmScreen extends StatelessWidget {
  const AlarmScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      appBar: AppBar(
        backgroundColor: kMainColor,
        centerTitle: true,
        title: const Text(
          'Income & Expense',
          style: TextStyle(color: cardColor),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.redAccent.shade100, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              leading: const Icon(
                FontAwesomeIcons.arrowDown,
                color: Colors.redAccent,
              ),
              title: const Text(
                '250.00 \$',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.redAccent.shade100, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              leading: const Icon(
                FontAwesomeIcons.arrowUp,
                color: cardColor,
              ),
              title: const Text(
                '375.50 \$',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.redAccent.shade100, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              leading: const Icon(
                FontAwesomeIcons.arrowDown,
                color: Colors.redAccent,
              ),
              title: const Text(
                '450.00 \$',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.redAccent.shade100, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              leading: const Icon(
                FontAwesomeIcons.arrowDown,
                color: Colors.redAccent,
              ),
              title: const Text(
                '99.90 \$',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.redAccent.shade100, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              leading: const Icon(
                FontAwesomeIcons.arrowUp,
                color: cardColor,
              ),
              title: const Text(
                '75.75 \$',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.redAccent.shade100, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              leading: const Icon(
                FontAwesomeIcons.arrowUp,
                color: cardColor,
              ),
              title: const Text(
                '1150.00 \$',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.redAccent.shade100, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              leading: const Icon(
                FontAwesomeIcons.arrowDown,
                color: Colors.redAccent,
              ),
              title: const Text(
                '250.00 \$',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.redAccent.shade100, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              leading: const Icon(
                FontAwesomeIcons.arrowUp,
                color: cardColor,
              ),
              title: const Text(
                '375.50 \$',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.redAccent.shade100, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              leading: const Icon(
                FontAwesomeIcons.arrowDown,
                color: Colors.redAccent,
              ),
              title: const Text(
                '450.00 \$',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.redAccent.shade100, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              leading: const Icon(
                FontAwesomeIcons.arrowDown,
                color: Colors.redAccent,
              ),
              title: const Text(
                '99.90 \$',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.redAccent.shade100, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              leading: const Icon(
                FontAwesomeIcons.arrowUp,
                color: cardColor,
              ),
              title: const Text(
                '75.75 \$',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.redAccent.shade100, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              leading: const Icon(
                FontAwesomeIcons.arrowUp,
                color: cardColor,
              ),
              title: const Text(
                '1150.00 \$',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
