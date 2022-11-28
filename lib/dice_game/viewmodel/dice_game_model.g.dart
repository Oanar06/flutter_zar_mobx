// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dice_game_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DiceGameViewModel on _DiceGameViewModelBase, Store {
  Computed<int>? _$totalComputed;

  @override
  int get total => (_$totalComputed ??= Computed<int>(() => super.total,
          name: '_DiceGameViewModelBase.total'))
      .value;

  late final _$leftAtom =
      Atom(name: '_DiceGameViewModelBase.left', context: context);

  @override
  int get left {
    _$leftAtom.reportRead();
    return super.left;
  }

  @override
  set left(int value) {
    _$leftAtom.reportWrite(value, super.left, () {
      super.left = value;
    });
  }

  late final _$rightAtom =
      Atom(name: '_DiceGameViewModelBase.right', context: context);

  @override
  int get right {
    _$rightAtom.reportRead();
    return super.right;
  }

  @override
  set right(int value) {
    _$rightAtom.reportWrite(value, super.right, () {
      super.right = value;
    });
  }

  late final _$_DiceGameViewModelBaseActionController =
      ActionController(name: '_DiceGameViewModelBase', context: context);

  @override
  void roll() {
    final _$actionInfo = _$_DiceGameViewModelBaseActionController.startAction(
        name: '_DiceGameViewModelBase.roll');
    try {
      return super.roll();
    } finally {
      _$_DiceGameViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
left: ${left},
right: ${right},
total: ${total}
    ''';
  }
}
