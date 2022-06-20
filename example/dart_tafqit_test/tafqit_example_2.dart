import 'package:tafqit/tafqit.dart';

void main() {
  var tafqit = Tafqit();
  print(tafqit.tafqitNumberWithParts(
      listOfNumberAndParts: [2, 62],
      tafqitUnitCode: TafqitUnitCode.saudiRiyal));

  /// will print    'فقط ريالان سعوديان واثنتان وستون هللةً لاغير'
  print(tafqit.tafqitNumberWithParts(
      listOfNumberAndParts: [0, 62],
      tafqitUnitCode: TafqitUnitCode.saudiRiyal));

  /// will print 'فقط اثنتان وستون هللةً سعوديةً لاغير'
  print(tafqit.tafqitNumberWithParts(
      listOfNumberAndParts: [0.9, 62],
      tafqitUnitCode: TafqitUnitCode.saudiRiyal,
      tryTafqit: true));

  /// will print  null
}
