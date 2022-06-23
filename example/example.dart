import 'package:tafqit/tafqit.dart';

void main() {
  var tafqit = Tafqit();

  ///  1- Using  Predefine Tafqit Units:

  print(tafqit.tafqitNumberWithParts(
      listOfNumberAndParts: [-357, 29],
      tafqitUnitCode: TafqitUnitCode.saudiRiyal));
  //will print 'فقط سالب ثلاثمائة وسبعة وخمسون ريالاً سعودياً وتسع وعشرون هللةً لاغير'

  print(tafqit.tafqitNumberWithParts(
      listOfNumberAndParts: [0, -9],
      tafqitUnitCode: TafqitUnitCode.saudiRiyal));
  //will print 'فقط سالب تسع هللات سعودية لاغير'

  /// will print    'فقط ريالان سعوديان واثنتان وستون هللةً لاغير'
  print(tafqit.tafqitNumberWithParts(
      listOfNumberAndParts: [0, 62],
      tafqitUnitCode: TafqitUnitCode.saudiRiyal));

  /// will print 'فقط اثنتان وستون هللةً سعوديةً لاغير'

  print(tafqit.tafqitNumberWithParts(
      listOfNumberAndParts: [1574, 2],
      tafqitUnitCode: TafqitUnitCode.syrianPound));

  /// will print 'فقط الف وخمسمائة واربع وسبعون ليرةً سوريةً وقرشان لاغير'
  ///
  ///
  print(tafqit.tafqitNumberWithParts(
      listOfNumberAndParts: [
        0.9,
        62
      ], //  Fraction not accepted will gave null as resault.
      tafqitUnitCode: TafqitUnitCode.saudiRiyal,
      tryTafqit: true));

  /// will print  null

  ///  2- defaine a new Tafqit Units:

  // بات تايلدندي   =  ساتانغ 100
  var batUnit = {
    'comprehensiveUnit': 'تايلندي',
    'unit': 'بات',
    'unitPlural': 'باتات',
    'unitGender': TafqitUnitGender.masculine,
  };
  var batPennyUnit = {
    'comprehensiveUnit': 'تايلندي',
    'unit': 'ساتانغ',
    'unitPlural': 'ساتانغات',
    'unitMaxValue': 100,
    'unitGender': TafqitUnitGender.masculine,
  };

  print(tafqit.tafqitByUserDefinedUnit(listOfNumberAndParts: [
    {3: batUnit},
    {11: batPennyUnit}
  ]));
  //فقط ثلاثة باتات تايلندية واحد عشر ساتانغاً لاغير

  print(tafqit.tafqitByUserDefinedUnit(listOfNumberAndParts: [
    {-3: batUnit},
    {11: batPennyUnit}
  ]));
  //فقط سالب ثلاثة باتات تايلندية واحد عشر ساتانغاً لاغير

  print(tafqit.tafqitByUserDefinedUnit(listOfNumberAndParts: [
    {3: batUnit},
    {-11: batPennyUnit}
  ]));
  //فقط ثلاثة باتات تايلندية واحد عشر ساتانغاً لاغير

  print(tafqit.tafqitByUserDefinedUnit(listOfNumberAndParts: [
    {0: batUnit},
    {-11: batPennyUnit}
  ]));
  //
//فقط سالب احد عشر ساتانغاً تايلندياً لاغير

  var aPotunit = {
    'unit': 'طنجرة',
    'unitPlural': 'طناجر',
    'unitGender': TafqitUnitGender.feminine
  };

  print(tafqit.tafqitByUserDefinedUnit(listOfNumberAndParts: [
    {234234: aPotunit}
  ]));
  // will Print  'فقط مئتان واربعة وثلاثون الفاً ومئتان واربع وثلاثون طنجرةً لاغير'

////// 3- Using JustWord & Nothing Else:

  print(tafqit.tafqitNumberWithParts(
      listOfNumberAndParts: [23, 2, 59], tafqitUnitCode: TafqitUnitCode.hour));
  // will print:
  //    'فقط ثلاث وعشرون ساعةً ودقيقتان وتسع وخمسون ثانيةً لاغير'

  print(tafqit.tafqitNumberWithParts(
    listOfNumberAndParts: [23, 2, 59],
    tafqitUnitCode: TafqitUnitCode.hour,
    justWord: 'الوقت المتوقع هو:',
    noOtherWord: 'بدأً من ساعة الصفر',
  ));
  // will print:
  // 'الوقت المتوقع هو: ثلاث وعشرون ساعةً ودقيقتان وتسع وخمسون ثانيةً بدأً من ساعة الصفر'

//// more examples to be added
}
