import 'dart:math';

abstract class RandomNum {
  static Random rnd = Random();
  static Random rnd2 = Random(DateTime.now().millisecondsSinceEpoch);

  static const _min = 0, _max = 99999;

  static num ranodmNum({int? maxim}) =>
      _min + rnd.nextInt((maxim ?? _max) - _min);

  static num nextInter({int? maxim}) =>
      (_min + rnd2.nextInt((maxim ?? _max) - _min));
}
