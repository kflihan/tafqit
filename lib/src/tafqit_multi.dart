//import 'dart:convert';
//import 'dart:ffi';
//import 'dart:typed_data';

//import 'package:tafqit/tafqit.dart';

import 'package:tafqit/src/model/tafqit_predefined_units.dart';
import 'package:tafqit/tafqit.dart';
import 'model/tafqit_unit.dart';
import 'model/utility.dart';

class Tafqit {
  //final List<Map<String, dynamic>> _PredefinedUnits = tafqitPredefinedUnits;

  String? tafqitNumberWithParts(
      {required List<num> listOfNumberAndParts,
      required TafqitUnitCode tafqitUnitCode,
      String justWord = 'فقط',
      String noOtherWord = 'لاغير',
      bool tryTafqit = false}) {
    ///----
    List? splitedUnitValue;
    // List<Map> listValuesToTafqit = [];
    //num currentUnitValue = 0;
    String andWord = '';
    TafqitUnit currentUnit;
    TafqitUnitCode currentUnitCode = tafqitUnitCode;
    bool mainUnitFlag = true;
    String tafResult = '';
    int listLenght = listOfNumberAndParts.length;
    //num previousValueToRound = 0;

    for (int i = 0; i < listLenght; i++) {
      splitedUnitValue = splitUnitValue(listOfNumberAndParts[i]);

      currentUnit = TafqitUnit.fromMap(tafqitPredefinedUnits.firstWhere(
          (element) => element['unitCode'] == currentUnitCode, orElse: () {
        return tafqitPredefinedUnits
            .firstWhere((e) => e['unitCode'] == TafqitUnitCode.undefinedPart);
      }));

      if (splitedUnitValue.length > 2) {
        if (tryTafqit) {
          return null;
        } else {
          throw FormatException(
              '''It is not possible to handle numbers containing commas ${listOfNumberAndParts[i]},
              enter the number without commas  ( ${splitedUnitValue[1]}) ,
              and add the parts ( ${splitedUnitValue[2]}) as a valid number in the parts field:''');
        }
      }
      if (i > 0 &&
          currentUnit.unitMaxValue != 0 &&
          splitedUnitValue[1] >= currentUnit.unitMaxValue) {
        if (tryTafqit) {
          return null;
        } else {
          throw FormatException(
              '''The value of the parts should not exceed the upper limit of the unit  ${currentUnit.unitCode}    "
            upper limit:  ${currentUnit.unitMaxValue}
            the pass value was: ${splitedUnitValue[1]}  ''');
        }
      }
      // currentUnitValue = splitedUnitValue[1];

      if ((splitedUnitValue[1] != 0) ||
          (splitedUnitValue[1] == 0 && listLenght == 1)) {
        tafResult = tafResult +
            andWord +
            (_getTafqit(
                    am: splitedUnitValue[1].toString(),
                    tafqitUnit: currentUnit,
                    isMainUnit: (currentUnit.comprehensiveUnit.isNotEmpty &&
                            mainUnitFlag
                        ? true
                        : false)) ??
                '');
        andWord = ' و ';
        mainUnitFlag = false;
      }
      currentUnitCode = currentUnit.partialUnitCode;
    }
    tafResult = '$justWord $tafResult $noOtherWord'
        .replaceAll('  ', ' ')
        .replaceAll('  ', ' ')
        .replaceAll('و ', 'و');
    return (tafResult);
  }

//======

  ///=====================

  String? tafqitByUserDefinedUnit(
      {required List<Map<num, Map<String, dynamic>?>> listOfNumberAndParts,
      String justWord = 'فقط',
      String noOtherWord = 'لاغير',
      bool tryTafqit = false}) {
    ///----
    List? splitedUnitValue;
    // List<Map> listValuesToTafqit = [];
    //num currentUnitValue = 0;
    String andWord = '';
    TafqitUnit currentUnit;
    // TafqitUnitCode currentUnitCode = tafqitUnitCode;
    bool mainUnitFlag = true;
    String tafResult = '';
    int listLenght = listOfNumberAndParts.length;
    for (int i = 0; i < listLenght; i++) {
      splitedUnitValue = splitUnitValue(listOfNumberAndParts[i].keys.first);

      currentUnit = TafqitUnit.fromMap(listOfNumberAndParts[i].values.first ??
          (i == 0
              ? tafqitPredefinedUnits
                  .firstWhere((e) => e['unitCode'] == TafqitUnitCode.undefined)
              : tafqitPredefinedUnits.firstWhere(
                  (e) => e['unitCode'] == TafqitUnitCode.undefinedPart)));

      if (splitedUnitValue.length > 2) {
        if (tryTafqit) {
          return null;
        } else {
          throw FormatException(
              '''It is not possible to handle numbers containing commas ${listOfNumberAndParts[i]},
              enter the number without commas  ( ${splitedUnitValue[1]}) ,
              and add the parts ( ${splitedUnitValue[2]}) as a valid number in the parts field:''');
        }
      }
      if (i > 0 &&
          currentUnit.unitMaxValue != 0 &&
          splitedUnitValue[1] >= currentUnit.unitMaxValue) {
        if (tryTafqit) {
          return null;
        } else {
          throw FormatException(
              '''The value of the parts should not exceed the upper limit of the unit  ${currentUnit.unitCode}    " 
            upper limit:  ${currentUnit.unitMaxValue}
            the pass value was: ${splitedUnitValue[1]}  ''');
        }
      }
      // currentUnitValue = splitedUnitValue[1];

      if ((splitedUnitValue[1] != 0) ||
          (splitedUnitValue[1] == 0 && listLenght == 1)) {
        tafResult = tafResult +
            andWord +
            (_getTafqit(
                    am: splitedUnitValue[1].toString(),
                    tafqitUnit: currentUnit,
                    isMainUnit: (currentUnit.comprehensiveUnit.isNotEmpty &&
                            mainUnitFlag
                        ? true
                        : false)) ??
                '');
        andWord = ' و ';
        mainUnitFlag = false;
      }
    }
    tafResult = '$justWord $tafResult $noOtherWord'
        .replaceAll('  ', ' ')
        .replaceAll('  ', ' ')
        .replaceAll('و ', 'و');
    return (tafResult);
  }

//==================

//  --################################################################
/*  example :
                        x=584
                3XDigits =5-8-4
          xDigitLocation= 2-1-0
_getTafqitWord( onesTensWordList,   xDigit =5 ,  xDigitLocation = 2 ,   TafqitUnit)
  onesTensWordList [5 * 3 + 2 + 1] ----->  خمسمائة

getTafqitWord( onesTensWordList,   xDigit =4 ,  xDigitLocation = 0 ,   TafqitUnit)

onesTensWordList[4 * 3 + 0 + 1] -------> اربعة

getTafqitWord( onesTensWordList,   xDigit =8 ,  xDigitLocation = 1 ,   TafqitUnit)
onesTensWordList[8 * 3 + 1 + 1] ------>  ثمانون

getTafqitWord( countedWordList,   xDigit = 1,  xDigitLocation = 0 ,   TafqitUnit)

countedWordList[1 * 3 + 0 + 1] ------> ريالاً
--
        فقط خمسمائة واربعة وثمانون ريالاً
  */
  String _getTafqitWord(String tafqitWordsList, var xDigit, var xDigitLocation,
      TafqitUnit tafUnit) {
    TafqitUnitGender numGender = (tafUnit.unitGender);

    List<String> hndrdsThosndsWordList = [
      ' ',
      ' ',
      ' ',
      ' ',
      'واحد',
      ' عشر',
      'مئة',
      'اثنان',
      'عشرون',
      'مئتان',
      'ثلاثة',
      'ثلاثون',
      'ثلاثمائة',
      'اربعة',
      'اربعون',
      'اربعمائة',
      'خمسة',
      'خمسون',
      'خمسمائة',
      'ستة',
      'ستون',
      'ستمائة',
      'سبعة',
      'سبعون',
      'سبعمائة',
      'ثمانية',
      'ثمانون',
      'ثمانمائة',
      'تسعة',
      'تسعون',
      'تسعمائة'
    ];
    List<String> onesTensWordList = [
      ' ',
      ' ',
      ' ',
      ' ',
      //'احدى',
      (numGender == TafqitUnitGender.feminine ? 'احدى' : 'واحد'),
      //     ' عشرة',
      (numGender == TafqitUnitGender.feminine ? ' عشرة' : ' عشر'),
      'مئة',

      //'اثنتان',
      (numGender == TafqitUnitGender.feminine ? 'اثنتان' : 'إثنان'),
      'عشرون',
      'مئتان',

      //'ثلاث',
      (numGender == TafqitUnitGender.feminine ? 'ثلاث' : 'ثلاثة'),
      'ثلاثون',
      'ثلاثمائة',

      //'اربع',
      (numGender == TafqitUnitGender.feminine ? 'اربع' : 'اربعة'),
      'اربعون',
      'اربعمائة',

      //'خمس',
      (numGender == TafqitUnitGender.feminine ? 'خمس' : 'خمسة'),
      'خمسون',
      'خمسمائة',

      //'ست',
      (numGender == TafqitUnitGender.feminine ? 'ست' : 'ستة'),
      'ستون',
      'ستمائة',

      //'سبع',
      (numGender == TafqitUnitGender.feminine ? 'سبع' : 'سبعة'),
      'سبعون',
      'سبعمائة',

      //'ثماني',
      (numGender == TafqitUnitGender.feminine ? 'ثماني' : 'ثمانية'),
      'ثمانون',
      'ثمانمائة',

      //'تسع',
      (numGender == TafqitUnitGender.feminine ? 'تسع' : 'تسعة'),
      'تسعون',
      'تسعمائة'
    ];
    List<String> countedWordList = [
      ' ',
      //'قرشاً',
      ' ',
      //'قرشاً',
      ' ',
      // 'قروش',
      ' ',

      //'ليرة',
      tafUnit.unit.isEmpty
          ? ''
          : ((tafUnit.unit.substring(tafUnit.unit.length - 1) == 'ة'
              ? '${tafUnit.unit.substring(0, tafUnit.unit.length - 1)}ةً'
              : ((tafUnit.unit.substring(tafUnit.unit.length - 1) == 'ء'
                  ? '${tafUnit.unit.substring(0, tafUnit.unit.length - 1)}ءً'
                  : '${tafUnit.unit}اً')))),

      //'ليرة',
      tafUnit.unit.isEmpty
          ? 'واحد'
          : ((tafUnit.unit.substring(tafUnit.unit.length - 1) == 'ة'
              ? '${tafUnit.unit.substring(0, tafUnit.unit.length - 1)}ةً'
              : ((tafUnit.unit.substring(tafUnit.unit.length - 1) == 'ء'
                  ? '${tafUnit.unit.substring(0, tafUnit.unit.length - 1)}ءً'
                  : '${tafUnit.unit}اً')))),
      //'ليرات',
      (tafUnit.unitPlural),
      'الف',
      'الفاً',
      'الاف',
      'مليون',
      'مليوناً',
      'ملايين',
      'مليار',
      'ملياراً',
      'مليارات',
      'ترليون',
      'ترليوناً',
      'ترليونات',
      'كوادريليون',
      'كوادريليوناً',
      'كوادريليونات'
    ];
    List<String> oneTowWordList = [
      ' ',
//    'قرش واحد',
      ' ',
//    'قرشان',
      ' ',
//    'قرشان',
      ' ',
      //'ليرة واحدة',
      tafUnit.unit.isEmpty
          ? 'واحد'
          : '${((tafUnit.unit.substring(tafUnit.unit.length - 1) == 'ة' ? '${tafUnit.unit.substring(0, tafUnit.unit.length - 1)}ةً' : '${tafUnit.unit}اً'))}${numGender == TafqitUnitGender.feminine ? ' واحدة' : ' واحداً'}',
      //'ليرتان',
      tafUnit.unit.isEmpty
          ? 'إثنان'
          : // (tafUnit.unitMultiple),
          (tafUnit.unit.substring(tafUnit.unit.length - 1) == 'ة'
              ? '${tafUnit.unit.substring(0, tafUnit.unit.length - 1)}تان'
              : '${tafUnit.unit}ان'),

      //'ليرتان',       (tafUnit.unitMultiple),
      tafUnit.unit.isEmpty
          ? 'إثنان'
          : (tafUnit.unit.substring(tafUnit.unit.length - 1) == 'ة'
              ? '${tafUnit.unit.substring(0, tafUnit.unit.length - 1)}تان'
              : '${tafUnit.unit}ان'),
      'الف',
      'الفان',
      'الفا',
      'مليون',
      'مليونان',
      'مليونا',
      'مليار',
      'ملياران',
      'مليارا',
      'ترليون',
      'ترليونان',
      'ترليونا',
      'كوادريليون',
      'كوادريليونان',
      'كوادريليونا'
    ];
    // print('$tafqitWordsList[$xDigit * 3 + $xDigitLocation + 1]');
    if (tafqitWordsList == 'hndrdsThosndsWordList') {
      return (hndrdsThosndsWordList[xDigit * 3 + xDigitLocation + 1]);
    } else if (tafqitWordsList == 'onesTensWordList') {
      return (onesTensWordList[xDigit * 3 + xDigitLocation + 1]);
    } else if (tafqitWordsList == 'oneTowWordList') {
      return (oneTowWordList[xDigit * 3 + xDigitLocation + 1]);
    } else if (tafqitWordsList == 'countedWordList') {
      return (countedWordList[xDigit * 3 + xDigitLocation + 1]);
    }
    return ('');
  }

  ///##########################################
  /*  _tafqitOnePart
example :
    tafqitNumber = 479 576 389
    -------------------------
_tafqitOnePart(  hndrdsThosndsWordList, partValue: 479, partLocation: 3, sumRestPartsValue:  965,  tafUnit )
اربعمائة وتسعة وسبعون مليوناً

_tafqitOnePart(  hndrdsThosndsWordList, partValue: 576, partLocation: 2, sumRestPartsValue: 389,  tafUnit)
خمسمائة وستة وسبعون الفاً

_tafqitOnePart(  onesTensWordList, partValue: 389,  partLocation: 1, sumRestPartsValue 0,  tafUnit)

ثلاثمائة وتسعة وثمانون ريالاً


  */
  ///--################################################################
  String _tafqitOnePart(String tafqitWordList, var partValue, var partLocation,
      var sumRestPartsValue, TafqitUnit tafUnit) {
    //  print(
    //    '_tafqitOnePart(  $tafqitWordList, $partValue, $partLocation, $sumRestPartsValue,  tafUnit ');

    int xHundred = 0;
    int xTens = 0;

    int xOnes = 0;
    var u = 0;

    String tafResult = '';

    String firstAndWord = '';
    String betweenAndWord = '';

    xHundred = int.tryParse((partValue / 100).truncate().toString()) ?? 0;
    xTens = int.tryParse(
            ((partValue - (xHundred * 100)) / 10).truncate().toString()) ??
        0;
    xOnes = int.tryParse(((partValue - xHundred * 100 - xTens * 10))
            .truncate()
            .toString()) ??
        0;

    if (partValue == 0) {
      tafResult = '';
      return (tafResult);
    } else if (partValue == 1) {
      tafResult = _getTafqitWord('oneTowWordList', partLocation, 0, tafUnit);
    } else if (partValue == 2) {
      if ((sumRestPartsValue == 0)) {
        tafResult = _getTafqitWord('oneTowWordList', partLocation, 2, tafUnit);
      } else {
        tafResult = _getTafqitWord('oneTowWordList', partLocation, 1, tafUnit);
      }
    } else if (partValue == 10) {
      if (_getTafqitWord(tafqitWordList, 1, 0, tafUnit) == 'احدى') {
        tafResult = 'عشر';
      } else {
        tafResult = 'عشرة';
      }
    } else if (partValue == 11) {
      if (_getTafqitWord(tafqitWordList, 1, 0, tafUnit) == 'احدى') {
        tafResult = 'احدى عشرة';
      } else {
        tafResult = 'احد عشر';
      }
    } else if (partValue == 12) {
      if (_getTafqitWord(tafqitWordList, 1, 0, tafUnit) == 'احدى') {
        tafResult = 'اثنتا عشرة';
      } else {
        tafResult = 'اثنا عشر';
      }
    } else {
      if ((xHundred > 0 && xTens + xOnes != 0)) {
        firstAndWord = ' و';
      }

      if ((xTens > 0 && xTens != 1 && xOnes != 0)) {
        betweenAndWord = ' و';
      }

      if ((xHundred == 2 && xTens + xOnes == 0)) {
        tafResult = 'مئتا';
      } else {
        if ((xTens == 0 && (xOnes == 1 || xOnes == 2))) {
          tafResult = _getTafqitWord(tafqitWordList, xHundred, 2, tafUnit) +
              firstAndWord +
              _getTafqitWord(
                  'oneTowWordList', partLocation, (xOnes - 1), tafUnit) +
              betweenAndWord +
              _getTafqitWord(tafqitWordList, xTens, 1, tafUnit);
        } else if ((xTens == 1 && (xOnes == 1 || xOnes == 2 || xOnes == 0))) {
          if (xOnes == 1) {
            if (_getTafqitWord(tafqitWordList, 1, 0, tafUnit) == 'احدى') {
              tafResult =
                  '${_getTafqitWord(tafqitWordList, xHundred, 2, tafUnit)} واحدى عشرة';
            } else {
              tafResult =
                  '${_getTafqitWord(tafqitWordList, xHundred, 2, tafUnit)} واحد عشر';
            }
          } else if (xOnes == 2) {
            if (_getTafqitWord(tafqitWordList, 1, 0, tafUnit) == 'احدى') {
              tafResult =
                  '${_getTafqitWord(tafqitWordList, xHundred, 2, tafUnit)} واثنتا عشرة';
            } else {
              tafResult =
                  '${_getTafqitWord(tafqitWordList, xHundred, 2, tafUnit)} واثنا عشر';
            }
          } else if (xOnes == 0) {
            if ((xTens == 1 && xOnes == 0)) {
              if (_getTafqitWord(tafqitWordList, 1, 0, tafUnit) == 'احدى') {
                tafResult =
                    '${_getTafqitWord(tafqitWordList, xHundred, 2, tafUnit)} وعشر';
              } else {
                tafResult =
                    '${_getTafqitWord(tafqitWordList, xHundred, 2, tafUnit)} وعشرة';
              }
            }
          }
        } else {
          tafResult = _getTafqitWord(tafqitWordList, xHundred, 2, tafUnit) +
              firstAndWord +
              _getTafqitWord(tafqitWordList, xOnes, 0, tafUnit) +
              betweenAndWord +
              _getTafqitWord(tafqitWordList, xTens, 1, tafUnit);
        }
      }
    }

    u = 0;

    if ((!((xTens == 0 && (xOnes == 1 || xOnes == 2)) ||
        partValue == 1 ||
        partValue == 2))) {
      if ((partValue >= 11 && partValue <= 99)) {
        u = 1;
      }

      if ((partValue >= 100 && xTens == 1 && xOnes == 0)) {
        u = 2;
      }

      if ((partValue >= 100 && xTens != 0)) {
        u = 1;
      }

      if (((partValue >= 100 && (xOnes + xTens) == 0) ||
          (sumRestPartsValue == 0))) {
        u = 0;
      }

      if ((partValue >= 3 && partValue <= 10)) {
        u = 2;
      }

      if ((partValue >= 100 && xTens == 0 && xOnes > 2)) {
        u = 2;
      }

      if ((partValue >= 100 && xTens == 1 && xOnes == 0)) {
        u = 2;
      }

      tafResult =
          '$tafResult ${_getTafqitWord('countedWordList', partLocation, u, tafUnit)}';
    }

    return (tafResult);
  }
//  --################################################################

//  --################################################################
  String? _getTafqit({
    required String am,
    required TafqitUnit tafqitUnit,
    bool isMainUnit = true, //  main amount only   get countery value
  }) {
    String j;
    String onePartTaf;
    String amount;

    TafqitUnit tafUnit = tafqitUnit.copyWith(
      unit: tafqitUnit.unit.isEmpty ? '' : tafqitUnit.unit,
      unitPlural: tafqitUnit.unitPlural.isEmpty ? '' : tafqitUnit.unitPlural,
    );

    List partValue = [0, 0, 0, 0, 0, 0, 0, 0];

    int f = 0;
    int flag = 0;
    int p;
    String tafResult = '';

    if (am.isEmpty) {
      return ('');
    }

    // print('am: $am  ${am.runtimeType}  ');
    amount = am;
    // print('am: $am  Amount: $amount');

    p = amount.indexOf('.');

    // print('Founf DOT @ $p  lenght: ${amount.length}');

    if ((p != -1)) {
      return (null);
    }

    if (((amount.length)) > 18) {
      return ('!!!تجاوزت الحد الاعلى للرقم');
    }

    j = '000000000000000000'.substring(0, 18 - (amount.length)) + amount;

    for (int i = 0; i <= 5; i++) {
      amount = j.substring(0, 3);
      partValue[(7 - i)] = int.tryParse(amount);
      j = j.substring(3, (j.length));
    }

    if ((partValue[7] > 0)) {
      onePartTaf = _tafqitOnePart(
          'hndrdsThosndsWordList',
          partValue[7],
          6,
          partValue[6] +
              partValue[5] +
              partValue[4] +
              partValue[3] +
              partValue[2],
          tafUnit);
      tafResult = tafResult + onePartTaf;
      flag = 1;
      f = 1;
    } else {
      flag = 0;
    }

    if ((partValue[6] > 0)) {
      onePartTaf = _tafqitOnePart('hndrdsThosndsWordList', partValue[6], 5,
          partValue[5] + partValue[4] + partValue[3] + partValue[2], tafUnit);
      if ((f == 1)) {
        tafResult = '$tafResult و';
      }
      tafResult = tafResult + onePartTaf;
      flag = 1;
      f = 1;
    } else {
      flag = 0;
    }

    if ((partValue[5] > 0)) {
      onePartTaf = _tafqitOnePart('hndrdsThosndsWordList', partValue[5], 4,
          partValue[4] + partValue[3] + partValue[2], tafUnit);

      if ((f == 1)) {
        tafResult = '$tafResult و';
      }

      tafResult = tafResult + onePartTaf;
      flag = 1;
      f = 1;
    } else {
      flag = 0;
    }

    if ((partValue[4] > 0)) {
      onePartTaf = _tafqitOnePart('hndrdsThosndsWordList', partValue[4], 3,
          partValue[3] + partValue[2], tafUnit);

      if ((f == 1)) {
        tafResult = '$tafResult و';
      }

      tafResult = tafResult + onePartTaf;
      flag = 1;
      f = 1;
    } else {
      flag = 0;
    }

    if ((partValue[3] > 0)) {
      onePartTaf = _tafqitOnePart(
          'hndrdsThosndsWordList', partValue[3], 2, partValue[2], tafUnit);

      if ((f == 1)) {
        tafResult = '$tafResult و';
      }

      tafResult = tafResult + onePartTaf;
      flag = 1;
      f = 1;
    } else {
      flag = 0;
    }

    if ((partValue[2] > 0)) {
      onePartTaf =
          _tafqitOnePart('onesTensWordList', partValue[2], 1, 0, tafUnit);

      if ((f == 1)) {
        tafResult = '$tafResult و';
      }

      tafResult = tafResult + onePartTaf;
      flag = 1;
      f = 1;
    } else if (f == 1) {
      tafResult = '$tafResult  ${tafUnit.unit}';
    }

    if (f == 1 && tafUnit.comprehensiveUnit.isNotEmpty && isMainUnit) {
      tafResult = _getcomprehensiveUnitUnit(partValue[2], tafResult,
          tafUnit.comprehensiveUnit, tafUnit.unitGender);
    }

    if ((double.tryParse(am) == 0)) {
      tafResult = 'صفر ${tafUnit.unit}';
    }

    return (tafResult.replaceAll('  ', ' ').replaceAll('  ', ' '));
  }

// ==========

  String _getcomprehensiveUnitUnit(var amount, String tafResult,
      String tafUnitcomprehensiveUnit, TafqitUnitGender tafUnitGender) {
    if (tafUnitcomprehensiveUnit.isEmpty) return tafResult;

    String unitcomprehensiveUnitLastChar =
        tafUnitcomprehensiveUnit.substring(tafUnitcomprehensiveUnit.length - 1);
    String unitcomprehensiveUnitWithoutLastChar = tafUnitcomprehensiveUnit
        .substring(0, tafUnitcomprehensiveUnit.length - 1);
    switch (tafUnitGender) {
      case TafqitUnitGender.neutral:
        tafResult = '$tafResult $tafUnitcomprehensiveUnit';
        break;

      case TafqitUnitGender.feminine:
        if (amount >= 3 && amount <= 10) {
          tafResult =
              '$tafResult ${((unitcomprehensiveUnitLastChar == 'ة' ? tafUnitcomprehensiveUnit : '${tafUnitcomprehensiveUnit}ة'))}';
        } else if (amount > 10) {
          tafResult =
              '$tafResult ${((unitcomprehensiveUnitLastChar == 'ة' ? '${unitcomprehensiveUnitWithoutLastChar}ةً' : '${tafUnitcomprehensiveUnit}ةً'))}';
        } else if (amount == 2) {
          tafResult =
              '$tafResult ${((unitcomprehensiveUnitLastChar == 'ة' ? '${unitcomprehensiveUnitWithoutLastChar}تان' : '${tafUnitcomprehensiveUnit}تان'))}';
        } else if (amount == 1) {
          tafResult =
              '$tafResult ${((unitcomprehensiveUnitLastChar == 'ة' ? tafUnitcomprehensiveUnit : '${tafUnitcomprehensiveUnit}ة'))}';
        } else {
          tafResult = '$tafResult $tafUnitcomprehensiveUnit';
        }
        break;
      case TafqitUnitGender.masculine:
        if (amount >= 3 && amount <= 10) {
          tafResult =
              '$tafResult ${((unitcomprehensiveUnitLastChar == 'ة' ? tafUnitcomprehensiveUnit : '${tafUnitcomprehensiveUnit}ة'))}';
        } else if (amount > 10) {
          tafResult =
              '$tafResult ${((unitcomprehensiveUnitLastChar == 'ة' ? '${unitcomprehensiveUnitWithoutLastChar}اً' : '${tafUnitcomprehensiveUnit}اً'))}';
        } else if (amount == 2) {
          tafResult =
              '$tafResult ${((unitcomprehensiveUnitLastChar == 'ة' ? '${unitcomprehensiveUnitWithoutLastChar}ان' : '${tafUnitcomprehensiveUnit}ان'))}';
        } else if (amount == 1) {
          tafResult =
              '$tafResult ${((unitcomprehensiveUnitLastChar == 'ة' ? unitcomprehensiveUnitWithoutLastChar : tafUnitcomprehensiveUnit))}';
        } else {
          tafResult = '$tafResult $tafUnitcomprehensiveUnit';
        }
    }
    return tafResult;
  }
}
