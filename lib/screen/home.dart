import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';
import '../widgets/payment_containers.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? name = 'Alex';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi $name',
                      style: mainTextStyle,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Welcome Back',
                      style: subTextStyle,
                    ),
                  ],
                ),
                const Spacer(),
                const CircleAvatar(
                  backgroundColor: kAvatarColor,
                  child: Icon(Icons.person),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              // shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.circular(20),
              // ),
              // elevation: 10,
              // color: cardColor,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  colors: [
                    cardColor,
                    Colors.black54,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const FaIcon(
                      FontAwesomeIcons.wifi,
                      color: Colors.white,
                      size: 30,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      '4562 1122 4595 7852',
                      style: cardTextStyle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Row(
                            children: const [
                              Spacer(),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'CARD HOLDER',
                                  style: TextStyle(color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  name.toString(),
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const FaIcon(
                              FontAwesomeIcons.ccVisa,
                              size: 40,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Balance',
                      style: subTextStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '\$ 92,510',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Upcoming payments',
                      style: subTextStyle,
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.redAccent),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.arrow_downward,
                          color: Colors.white,
                        ),
                        Text(
                          '5.9%',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                PaymentsContainer(
                  upText: 'Salary',
                  icon: FontAwesomeIcons.shoppingBag,
                  downText: 'Belong Interactive',
                  money: '\$2000',
                ),
                const SizedBox(
                  width: 20,
                ),
                PaymentsContainer(
                  upText: 'Paypal',
                  icon: FontAwesomeIcons.paypal,
                  downText: 'Freelance payment',
                  money: '\$45',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
