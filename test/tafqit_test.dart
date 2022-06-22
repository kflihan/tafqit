import 'package:tafqit/tafqit.dart';
import 'package:test/test.dart';
import 'package:tafqit/src/model/utility.dart';

void main() {
  group('A group of tests', () {
    //final awesome = Awesome();

    setUp(() {
      // Additional setup goes here.
    });

    test('splitUnitValue Test', () {
      expect(splitUnitValue(1111.33), [1, 1111, 0.33]);
      expect(splitUnitValue(0), [1, 0]);
      expect(splitUnitValue(-1111.03), [-1, 1111, 0.03]);
      expect(splitUnitValue(1), [1, 1]);
      expect(splitUnitValue(0.9), [1, 0, 0.9]);
      expect(splitUnitValue(0.004), [1, 0, 0.004]);
      expect(splitUnitValue(-1), [-1, 1]);
      expect(splitUnitValue(0.6), [1, 0, 0.6]);
      expect(splitUnitValue(99.089), [1, 99, 0.089]);
      expect(splitUnitValue(123456789012004), [1, 123456789012004]);
    });

    test('tafqit 0 Number  Test', () {
      var tafqit = Tafqit();

      expect(
          tafqit.tafqitNumberWithParts(
              listOfNumberAndParts: [0], tafqitUnitCode: TafqitUnitCode.none),
          'فقط صفر لاغير');
    });

    test('tafqit Negative (-)Number  Test', () {
      var tafqit = Tafqit();

      expect(
          tafqit.tafqitNumberWithParts(
              listOfNumberAndParts: [-357, 29],
              tafqitUnitCode: TafqitUnitCode.saudiRiyal),
          'فقط سالب ثلاثمائة وسبعة وخمسون ريالاً سعودياً وتسع وعشرون هللةً لاغير');

      expect(
          tafqit.tafqitNumberWithParts(
              listOfNumberAndParts: [0, -9],
              tafqitUnitCode: TafqitUnitCode.saudiRiyal),
          'فقط سالب تسع هللات سعودية لاغير');
    });

    test(
      'tafqitNumberWithParts Test',
      () {
        var tafqit = Tafqit();

        expect(
            tafqit.tafqitNumberWithParts(
                listOfNumberAndParts: [2, 62],
                tafqitUnitCode: TafqitUnitCode.saudiRiyal),
            'فقط ريالان سعوديان واثنتان وستون هللةً لاغير');
        expect(
            tafqit.tafqitNumberWithParts(
                listOfNumberAndParts: [0, 62],
                tafqitUnitCode: TafqitUnitCode.saudiRiyal),
            'فقط اثنتان وستون هللةً سعوديةً لاغير');
        expect(
            tafqit.tafqitNumberWithParts(
                listOfNumberAndParts: [0.9, 62],
                tafqitUnitCode: TafqitUnitCode.saudiRiyal,
                tryTafqit: true),
            null);

        expect(
            tafqit.tafqitNumberWithParts(
                listOfNumberAndParts: [23, 2, 59],
                tafqitUnitCode: TafqitUnitCode.hour),
            'فقط ثلاث وعشرون ساعةً ودقيقتان وتسع وخمسون ثانيةً لاغير');
      },
    );

    test(
      'tafqitNumberWithParts User defiend "justWord" and "noOtherWord" Test',
      () {
        var tafqit = Tafqit();
        expect(
            tafqit.tafqitNumberWithParts(
                listOfNumberAndParts: [23, 2, 59],
                tafqitUnitCode: TafqitUnitCode.hour),
            'فقط ثلاث وعشرون ساعةً ودقيقتان وتسع وخمسون ثانيةً لاغير');

        expect(
            tafqit.tafqitNumberWithParts(
              listOfNumberAndParts: [23, 2, 59],
              tafqitUnitCode: TafqitUnitCode.hour,
              justWord: 'الوقت المتوقع هو:',
              noOtherWord: 'بدأً من ساعة الصفر',
            ),
            'الوقت المتوقع هو: ثلاث وعشرون ساعةً ودقيقتان وتسع وخمسون ثانيةً بدأً من ساعة الصفر');

        expect(
            tafqit.tafqitNumberWithParts(
                listOfNumberAndParts: [1],
                tafqitUnitCode: TafqitUnitCode.percent),
            'فقط واحد بالمئة لاغير');
        expect(
            tafqit.tafqitNumberWithParts(
                listOfNumberAndParts: [2],
                tafqitUnitCode: TafqitUnitCode.percent),
            'فقط إثنان بالمئة لاغير');

        expect(
            tafqit.tafqitNumberWithParts(
                listOfNumberAndParts: [3],
                tafqitUnitCode: TafqitUnitCode.percent),
            'فقط ثلاثة بالمئة لاغير');
      },
    );

    test(
      'TafqitUnitGender.neutral  Test',
      () {
        var tafqit = Tafqit();

        expect(
            tafqit.tafqitNumberWithParts(
                listOfNumberAndParts: [1],
                tafqitUnitCode: TafqitUnitCode.percent),
            'فقط واحد بالمئة لاغير');
        expect(
            tafqit.tafqitNumberWithParts(
                listOfNumberAndParts: [2],
                tafqitUnitCode: TafqitUnitCode.percent),
            'فقط إثنان بالمئة لاغير');

        expect(
            tafqit.tafqitNumberWithParts(
                listOfNumberAndParts: [3],
                tafqitUnitCode: TafqitUnitCode.percent),
            'فقط ثلاثة بالمئة لاغير');

        expect(
            tafqit.tafqitNumberWithParts(
                listOfNumberAndParts: [12345689],
                tafqitUnitCode: TafqitUnitCode.percent),
            'فقط اثنا عشر مليوناً وثلاثمائة وخمسة واربعون الفاً وستمائة وتسعة وثمانون بالمئة لاغير');
      },
    );
    test('tafqitByUserDefinedUnit Test', () {
      var tafqit = Tafqit();
      var number1 = 234234;
      var aPotunit = {
        'unit': 'طنجرة',
        'unitPlural': 'طناجر',
        'unitGender': TafqitUnitGender.feminine
      };

      expect(
          tafqit.tafqitByUserDefinedUnit(listOfNumberAndParts: [
            {number1: aPotunit}
          ]),
          'فقط مئتان واربعة وثلاثون الفاً ومئتان واربع وثلاثون طنجرةً لاغير');

      var boxesNumber = 234234;
      var unitBoxes = {
        'unit': 'صندوق',
        'unitPlural': 'صناديق',
        'unitGender': TafqitUnitGender.masculine,
      };

      var partsNumber = 11;

      var partsUnit = {
        'unit': 'قطعة',
        'unitPlural': 'قطع',
        'unitMaxValue': 12,
        'unitGender': TafqitUnitGender.feminine,
      };

      expect(
          tafqit.tafqitByUserDefinedUnit(listOfNumberAndParts: [
            {boxesNumber: unitBoxes},
            {partsNumber: partsUnit}
          ]),
          'فقط مئتان واربعة وثلاثون الفاً ومئتان واربعة وثلاثون صندوقاً واحدى عشرة قطعةً لاغير');

      expect(
          tafqit.tafqitByUserDefinedUnit(listOfNumberAndParts: [
            {boxesNumber: null},
            {partsNumber: null}
          ]),
          'فقط مئتان واربعة وثلاثون الفاً ومئتان واربعة وثلاثون قلماً واحد عشر جزءً لاغير');
      var mellonUnit = {
        'unit': 'بطيخة',
        'unitPlural': 'بطيخات',
        'unitGender': TafqitUnitGender.feminine,
      };

      expect(
          tafqit.tafqitByUserDefinedUnit(listOfNumberAndParts: [
            {1: mellonUnit}
          ]),
          'فقط بطيخةً واحدة لاغير');

      expect(
          tafqit.tafqitByUserDefinedUnit(listOfNumberAndParts: [
            {2: mellonUnit}
          ]),
          'فقط بطيختان لاغير');

      expect(
          tafqit.tafqitByUserDefinedUnit(listOfNumberAndParts: [
            {3: mellonUnit}
          ]),
          'فقط ثلاث بطيخات لاغير');

      // بات تايلدندي - ساتانغ 100
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
/*
فقط إثنان بالمئان لاغير
فقط واحد بالمئ لاغير

*/

      expect(
          tafqit.tafqitByUserDefinedUnit(listOfNumberAndParts: [
            {3: batUnit},
            {11: batPennyUnit}
          ]),
          'فقط ثلاثة باتات تايلندية واحد عشر ساتانغاً لاغير');
    });
  });
}
