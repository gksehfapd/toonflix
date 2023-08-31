import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';

class Player {
  String name;

  Player({required this.name});
}

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool showTitle = true;

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: const TextTheme(
              titleLarge: TextStyle(
        color: Colors.red,
      ))),
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: (Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              showTitle ? const MyLargeTitle() : const Text('nothing to see'),
              IconButton(
                  onPressed: toggleTitle,
                  icon: const Icon(Icons.remove_red_eye)),
            ],
          )),
        ),

        //여기부터
        // backgroundColor: const Color(0xFF181818),
        // body: SingleChildScrollView(
        //   child: Padding(
        //     padding: const EdgeInsets.symmetric(
        //       horizontal: 20,
        //     ),
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         const SizedBox(
        //           height: 80,
        //         ),
        //         const Row(
        //           mainAxisAlignment: MainAxisAlignment.end,
        //           children: [
        //             Column(
        //               crossAxisAlignment: CrossAxisAlignment.end,
        //               children: [
        //                 Text(
        //                   'Hey, HAN',
        //                   style: TextStyle(
        //                     color: Colors.white,
        //                     fontSize: 28,
        //                     fontWeight: FontWeight.w800,
        //                   ),
        //                 ),
        //                 Text(
        //                   'Welcome back',
        //                   style: TextStyle(
        //                     color: Color.fromRGBO(255, 255, 255, 0.8),
        //                     fontSize: 18,
        //                   ),
        //                 ),
        //               ],
        //             )
        //           ],
        //         ),
        //         const SizedBox(
        //           height: 70,
        //         ),
        //         Text(
        //           'Total Balance',
        //           style: TextStyle(
        //             fontSize: 22,
        //             color: Colors.white.withOpacity(0.8),
        //           ),
        //         ),
        //         const SizedBox(
        //           height: 5,
        //         ),
        //         const Text(
        //           '\$5 194 482',
        //           style: TextStyle(
        //             fontSize: 42,
        //             fontWeight: FontWeight.w600,
        //             color: Colors.white,
        //           ),
        //         ),
        //         const SizedBox(height: 30),
        //         const Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           children: [
        //             Button(
        //               text: 'Transfer',
        //               bgColor: Colors.amber,
        //               textColor: Colors.black,
        //             ),
        //             Button(
        //               text: 'Request',
        //               bgColor: Color(0xFF1F2123),
        //               textColor: Colors.white,
        //             ),
        //           ],
        //         ),
        //         const SizedBox(
        //           height: 50,
        //         ),
        //         Row(
        //           crossAxisAlignment: CrossAxisAlignment.end,
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           children: [
        //             const Text(
        //               'Wallets',
        //               style: TextStyle(
        //                 color: Colors.white,
        //                 fontSize: 36,
        //                 fontWeight: FontWeight.w600,
        //               ),
        //             ),
        //             Text(
        //               'View All',
        //               style: TextStyle(
        //                 color: Colors.white.withOpacity(0.8),
        //                 fontSize: 18,
        //               ),
        //             ),
        //           ],
        //         ),
        //         const SizedBox(
        //           height: 20,
        //         ),
        //         const CurrencyCard(
        //           name: 'Euro',
        //           code: 'EUR',
        //           amount: '6 428',
        //           icon: Icons.euro_rounded,
        //           isInverted: false,
        //           order: 0,
        //         ),
        //         const CurrencyCard(
        //           name: 'Bitcoin',
        //           code: 'BTC',
        //           amount: '9 785',
        //           icon: Icons.currency_bitcoin,
        //           isInverted: true,
        //           order: 1,
        //         ),
        //         const CurrencyCard(
        //           name: 'Dollar',
        //           code: 'USD',
        //           amount: '8 987',
        //           icon: Icons.attach_money_outlined,
        //           isInverted: false,
        //           order: 2,
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        //여기까지
      ),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  int count = 0;

  @override
  void initState() {
    super.initState();
    print('initState!');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose');
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Text(
      'My Large Title',
      style: TextStyle(
          fontSize: 30, color: Theme.of(context).textTheme.titleLarge?.color),
    );
  }
}
