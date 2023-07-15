import 'package:flutter/material.dart';
import 'package:tic_tac_toe/gamescreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: 425.0, height: 72.0),
          Text(
            "TIC TAC TOE",
            style: TextStyle(
              fontSize: 48.0,
              fontWeight: FontWeight.w900,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          const SizedBox(height: 56.0),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 472.0,
            margin: const EdgeInsets.symmetric(horizontal: 24.0),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(235.0, 60.0),
                    foregroundColor: Colors.white,
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "SINGLE PLAYER",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).colorScheme.background,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(235.0, 60.0),
                    foregroundColor: Colors.white,
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)
                    ),
                  ),
                  onPressed: () {
                    showMultiDialog(context);
                  },
                  child: Text(
                    "MULTI PLAYER",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).colorScheme.background,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(235.0, 60.0),
                    foregroundColor: Colors.white,
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "LEADERBOARD",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).colorScheme.background,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  showMultiDialog(BuildContext context) {
    Widget continueButton = ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const GameScreen()
              )
          );
        },
        child: const Text("YES")
    );

    AlertDialog alert = AlertDialog(
      content: const Text("ARE YOU READY?"),
      actions: [
        continueButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
