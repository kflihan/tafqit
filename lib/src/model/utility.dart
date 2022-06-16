import 'package:tafqit/src/model/tafqit_unit.dart';
import 'package:tafqit/src/model/unit_code.dart';

import 'tafqit_predefined_units.dart';

RegExp _numeric = RegExp(r'^-?[0-9]+$');

/// check if the string contains only numbers
bool isUnitValueNumeric(String str) {
  return _numeric.hasMatch(str);
}

bool isUnitValueNumeric2(String s) {
  return double.tryParse(s) != null;
}

class UnitValueDecimalFormatter {
  UnitValueDecimalFormatter(
      {required int decimalRange, required bool activatedNegativeValues})
      : assert(
            decimalRange >= 0, 'UnitValueDecimalFormatter  declaretion error') {
    String dp = (decimalRange > 0) ? "([.][0-9]{0,$decimalRange}){0,1}" : "";
    String num = "[0-9]*$dp";

    if (activatedNegativeValues) {
      _exp = RegExp("^((((-){0,1})|((-){0,1}[0-9]$num))){0,1}\$");
    } else {
      _exp = RegExp("^($num){0,1}\$");
    }
  }

  RegExp _exp = RegExp('');

  String formatEditUpdate(
    String oldValue,
    String newValue,
  ) {
    if (_exp.hasMatch(newValue)) {
      return newValue;
    }
    return oldValue;
  }

  bool isUnitValueDecimal(String oldValue) {
    if (_exp.hasMatch(oldValue)) {
      return true;
    }
    return false;
  }
}

List splitUnitValue(num number) {
  List? splitsmount;
  List<num>? unitAmount;
  // var decimalFormatter = UnitValueDecimalFormatter(
  //     decimalRange: 20, activatedNegativeValues: false);

  // if (!decimalFormatter.isUnitValueDecimal(number.toString())) {
  //   return null;
  // }
  unitAmount = [];

  if (number.toString().substring(0, 1) == '-') {
    unitAmount.add(-1);
    splitsmount = number.toString().substring(1).split('.');
  } else {
    unitAmount.add(1);
    splitsmount = number.toString().split('.');
  }

  //print('Length ${splitsmount.length}   $splitsmount');

  switch (splitsmount.length) {
    case 0:
      unitAmount.add(0);
      break;
    case 1:
      unitAmount.add(num.tryParse('${splitsmount[0]}')!);
      break;
    case 2:
      unitAmount.add(num.tryParse('${splitsmount[0]}')!);
      unitAmount.add(num.tryParse('0.${splitsmount[1]}')!);
      break;
  }

  return (unitAmount);
}

main() {
  // splitedUnitValue = splitUnitValue(listOfNumberAndParts[i]);

  TafqitUnit tafunit = TafqitUnit.fromMap(tafqitPredefinedUnits.firstWhere(
      (element) => element['unitCode'] == TafqitUnitCode.test, orElse: () {
    return tafqitPredefinedUnits
        .firstWhere((e) => e['unitCode'] == TafqitUnitCode.undefinedPart);
  }));

  print(tafunit);
}
