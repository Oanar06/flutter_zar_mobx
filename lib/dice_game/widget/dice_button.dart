
import 'package:flutter/material.dart';

import 'package:flutter_mobx/flutter_mobx.dart';

import '../viewmodel/dice_game_model.dart';

enum DicePosition {left,right}

final DiceGameViewModel diceCounter = DiceGameViewModel();
class DiceGame extends StatelessWidget {
  const DiceGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: const <Widget>[
                DiceButton(dicePositionSelected: DicePosition.left),
                DiceButton(dicePositionSelected: DicePosition.right),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Observer(builder: (_) {
                return Text(
                  'Total = ${diceCounter.total}',
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: Colors.deepPurpleAccent),
                );
              }),
            )
          ],
        ),
      ));
}

class DiceButton extends StatelessWidget {
  const DiceButton({required this.dicePositionSelected});
  final DicePosition dicePositionSelected;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        child: Observer(builder: (_) {
          return Image.asset(
              'assets/images/dice${dicePositionSelected == DicePosition.left ? diceCounter.left : diceCounter.right}.png');
        }),
        onPressed: diceCounter.roll,
      ),
    );
  }
}
