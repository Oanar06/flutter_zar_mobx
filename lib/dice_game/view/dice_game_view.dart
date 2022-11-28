import 'package:flutter/material.dart';

import '../widget/dice_button.dart';

class DiceGameView extends StatefulWidget {
  const DiceGameView({Key? key}) : super(key: key);

  @override
  State<DiceGameView> createState() => _DiceGameViewState();
}

class _DiceGameViewState extends State<DiceGameView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: Center(
          child: Text(
            'Play Dice Game!',
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.white70),
          ),
        ),
        backgroundColor:Colors.deepPurpleAccent,

      ),
      body: const DiceGame(),
    );
  }
}
