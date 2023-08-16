import 'package:flutter/material.dart';
import 'package:toonflix/widgets/Button.dart';
import 'package:toonflix/widgets/currency-card.dart';

void main() {
  runApp(const StApp());
}

class StApp extends StatefulWidget {
  const StApp({super.key});

  @override
  State<StApp> createState() => _StAppState();
}

class _StAppState extends State<StApp> {
  int counter = 0;

  void onCilcked() {
    counter += 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 244, 230, 187),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Click Counter',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              Text(
                '$counter',
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              IconButton(
                iconSize: 60,
                onPressed: onCilcked,
                icon: const Icon(
                  Icons.add_box_sharp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'hey, 성훈',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Text(
                  'Total balance',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '\$5 194 484',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  children: [
                    Button(
                      bgColor: Colors.amber,
                      text: 'Transfer',
                      frontColor: Colors.black,
                    ),
                    Button(
                      bgColor: Color(0xFF1F2123),
                      text: 'Request',
                      frontColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CurrencyCard(
                  name: 'Euro',
                  code: 'EUR',
                  amount: '6 428',
                  icon: Icons.euro_rounded,
                  isInverted: false,
                ),
                Transform.translate(
                  offset: const Offset(0, -20),
                  child: const CurrencyCard(
                    name: 'Bitcoin',
                    code: 'BTC',
                    amount: '9 873',
                    icon: Icons.currency_bitcoin_outlined,
                    isInverted: true,
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, -40),
                  child: const CurrencyCard(
                    name: 'Dollar',
                    code: 'USD',
                    amount: '6 124',
                    icon: Icons.attach_money_rounded,
                    isInverted: false,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
