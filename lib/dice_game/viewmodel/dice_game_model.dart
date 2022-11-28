import 'dart:math';
import 'package:mobx/mobx.dart';
part 'dice_game_model.g.dart';

class DiceGameViewModel = _DiceGameViewModelBase with _$DiceGameViewModel;

abstract class _DiceGameViewModelBase with Store {
  @observable  // Her tıklanıldığında değişecek sayıları haber verir
  int left = Random().nextInt(6) + 1;  
  @observable
  int right = Random().nextInt(6) + 1;
  @computed // observer olan left ve right değerlerini dinleyerek hesaplar
  int get total => left + right;
  @action  // resmi otomatik güncellemeyi başlatır
  void roll() {
    left = Random().nextInt(6) + 1;
    right = Random().nextInt(6) + 1;
  }
}
