import 'dart:ffi';

import 'package:tafqit/tafqit.dart';

void main() {
  var tafqit = Tafqit();

  print(tafqit.tafqitNumberWithParts(
      listOfNumberAndParts: [23, 2, 59], tafqitUnitCode: TafqitUnitCode.hour));

  print(tafqit.tafqitNumberWithParts(
    listOfNumberAndParts: [23, 2, 44],
    tafqitUnitCode: TafqitUnitCode.hour,
    justWord: 'الوقت المتوقع هو:',
    noOtherWord: 'بدءً من ساعة الصفر',
    tryTafqit: true,
  ));

  print(tafqit.tafqitNumberWithParts(
      listOfNumberAndParts: [585890449645464512, 02],
      tafqitUnitCode: TafqitUnitCode.syrianPound));
  print(tafqit.tafqitNumberWithParts(
      listOfNumberAndParts: [2, 62],
      tafqitUnitCode: TafqitUnitCode.saudiRiyal));
  print(tafqit.tafqitNumberWithParts(
      listOfNumberAndParts: [0, 62],
      tafqitUnitCode: TafqitUnitCode.saudiRiyal));

  // بات تايلدندي - ساتانغ 100
  var batUnit = {
    'comprehensiveUnit': 'تايلندي',
    'unit': 'بات',
    'unitPlural': 'باتات',
    'unitMaxValue': 0,
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
  print(tafqit.tafqitByUserDefinedUnit(listOfNumberAndParts: [
    {46588453: batUnit},
    {19: batPennyUnit}
  ]));

  var number1 = 13;
  var unit1 = {
    'unit': 'طنجرة',
    'unitPlural': 'طناجر',
    'unitGender': TafqitUnitGender.feminine
  };

  print(tafqit.tafqitByUserDefinedUnit(listOfNumberAndParts: [
    {number1: unit1}
  ]));

  number1 = 1;
  unit1 = {
    'unit': 'بطيخة',
    'unitPlural': 'بطيخات',
    'unitGender': TafqitUnitGender.feminine,
  };

  print(tafqit.tafqitByUserDefinedUnit(listOfNumberAndParts: [
    {number1: unit1}
  ]));

  print(tafqit.tafqitByUserDefinedUnit(listOfNumberAndParts: [
    {2: unit1}
  ]));

  print(tafqit.tafqitByUserDefinedUnit(listOfNumberAndParts: [
    {3: unit1}
  ]));

  print(tafqit.tafqitByUserDefinedUnit(listOfNumberAndParts: [
    {3453453477: unit1}
  ]));

  var boxesNumber = 234234;
  var unitBoxes = {
    'unitCode': TafqitUnitCode.userDefined,
    'comprehensiveUnit': '',
    'unit': 'صندوق',
    'unitPlural': 'صناديق',
    'unitMaxValue': 0,
    'unitGender': TafqitUnitGender.masculine,
    'partialUnitCode': TafqitUnitCode.none
  };

  var partsNumber = 11;

  var partsUnit = {
    'unitCode': TafqitUnitCode.userDefined,
    'comprehensiveUnit': '',
    'unit': 'قطعة',
    'unitPlural': 'قطع',
    'unitMaxValue': 12,
    'unitGender': TafqitUnitGender.feminine,
    'partialUnitCode': TafqitUnitCode.none
  };

  print(tafqit.tafqitByUserDefinedUnit(listOfNumberAndParts: [
    {boxesNumber: unitBoxes},
    {partsNumber: partsUnit}
  ]));

  print(tafqit.tafqitByUserDefinedUnit(listOfNumberAndParts: [
    {boxesNumber: null},
    {partsNumber: null}
  ]));

  print(tafqit.tafqitNumberWithParts(
      listOfNumberAndParts: [2, 2, 0, 300],
      tafqitUnitCode: TafqitUnitCode.jordanianDinar));
  print(tafqit.tafqitNumberWithParts(
      listOfNumberAndParts: [0, 0, 2, 22],
      tafqitUnitCode: TafqitUnitCode.jordanianDinar));
  print(tafqit.tafqitNumberWithParts(
      listOfNumberAndParts: [2], tafqitUnitCode: TafqitUnitCode.kiloMetre2));

  print(tafqit.tafqitNumberWithParts(
      listOfNumberAndParts: [12], tafqitUnitCode: TafqitUnitCode.kiloMetre2));

  print(tafqit.tafqitNumberWithParts(
      listOfNumberAndParts: [11], tafqitUnitCode: TafqitUnitCode.kiloMetre2));

  print(tafqit.tafqitNumberWithParts(
      listOfNumberAndParts: [353], tafqitUnitCode: TafqitUnitCode.kiloMetre2));

  print(tafqit.tafqitNumberWithParts(
      listOfNumberAndParts: [3], tafqitUnitCode: TafqitUnitCode.kiloMetre2));

  print(tafqit.tafqitNumberWithParts(
      listOfNumberAndParts: [2], tafqitUnitCode: TafqitUnitCode.kiloMetre2));
  print(tafqit.tafqitNumberWithParts(
      listOfNumberAndParts: [15445, 13],
      tafqitUnitCode: TafqitUnitCode.kiloMetre2));
  print(tafqit.tafqitNumberWithParts(
      listOfNumberAndParts: [45645],
      tafqitUnitCode: TafqitUnitCode.kiloMetre2));

  print(tafqit.tafqitNumberWithParts(
      listOfNumberAndParts: [12], tafqitUnitCode: TafqitUnitCode.kiloMetre2));

  print(tafqit.tafqitNumberWithParts(
      listOfNumberAndParts: [11], tafqitUnitCode: TafqitUnitCode.kiloMetre2));

  print(tafqit.tafqitNumberWithParts(
      listOfNumberAndParts: [353], tafqitUnitCode: TafqitUnitCode.kiloMetre2));

  print(tafqit.tafqitNumberWithParts(
      listOfNumberAndParts: [3], tafqitUnitCode: TafqitUnitCode.kiloMetre2));

  print(tafqit.tafqitNumberWithParts(
      listOfNumberAndParts: [2], tafqitUnitCode: TafqitUnitCode.kiloMetre2));
  print(tafqit.tafqitNumberWithParts(
      listOfNumberAndParts: [0, 0, 1],
      tafqitUnitCode: TafqitUnitCode.kiloMetre2));

  print(tafqit.tafqitNumberWithParts(
      listOfNumberAndParts: [0], tafqitUnitCode: TafqitUnitCode.kiloMetre2));
  print(tafqit.tafqitNumberWithParts(
      listOfNumberAndParts: [0], tafqitUnitCode: TafqitUnitCode.kiloMetre2));
  print(tafqit.tafqitNumberWithParts(
      listOfNumberAndParts: [0, 0, 0],
      tafqitUnitCode: TafqitUnitCode.kiloMetre2));
  print(tafqit.tafqitNumberWithParts(
      listOfNumberAndParts: [1, 0, 0, 1],
      tafqitUnitCode: TafqitUnitCode.kiloMetre2));
  print(tafqit.tafqitNumberWithParts(
      listOfNumberAndParts: [0, 0, 2],
      tafqitUnitCode: TafqitUnitCode.kiloMetre2));
}
