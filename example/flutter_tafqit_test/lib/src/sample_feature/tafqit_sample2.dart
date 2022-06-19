import 'package:flutter/material.dart';
import 'package:tafqit/tafqit.dart';

import '../utility/utilty.dart';

class TafqitItemDetailsView2 extends StatefulWidget {
  const TafqitItemDetailsView2({Key? key}) : super(key: key);

  static const routeName = '/tafqit_item2';

  @override
  State<TafqitItemDetailsView2> createState() => _TafqitItemDetailsView2State();
}

class _TafqitItemDetailsView2State extends State<TafqitItemDetailsView2> {
  num _amount = RandomNum.ranodmNum();
  num _cents = RandomNum.ranodmNum(maxim: 99);
  var tafqit = Tafqit();
  var batUnit = {
    'comprehensiveUnit': 'تايلندي',
    'unit': 'بات',
    'unitPlural': 'باتات',
    'unitGender': TafqitUnitGender.masculine,
  };
  var sattangUnit = {
    'comprehensiveUnit': 'تايلندي',
    'unit': 'ساتانغ',
    'unitPlural': 'ساتانغات',
    'unitMaxValue': 100,
    'unitGender': TafqitUnitGender.masculine,
  };

  void _randomAmount() {
    setState(() {
      _amount = RandomNum.nextInter();
      _cents = RandomNum.nextInter(maxim: 99);
    });
  }

  @override
  Widget build(BuildContext context) {
    final argsTitle = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('$argsTitle'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                ' amount: $_amount.$_cents  ',
              ),
            ),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Text(
                  """  يمكن استخدام الوحدات المعرفة سابقاً في مكتبة التفقيط كوحدة  تفقيط الريال السعودي، 
                      TafqitUnitCode.saudiArabianRiyal
                      --------------------
                      var tafqit = Tafqit();
                      String taf = tafqit.tafqitNumberWithParts(
                      listOfNumberAndParts: [$_amount,$_cents],
                      tafqitUnitCode: TafqitUnitCode.saudiArabianRiyal)
                      )""",
                  style: const TextStyle(color: Color(0xFF15A35C))),
            ),
            Text(
              '${tafqit.tafqitNumberWithParts(listOfNumberAndParts: [
                    _amount,
                    _cents
                  ], tafqitUnitCode: TafqitUnitCode.saudiArabianRiyal)}',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Text(
                  """يمكن تعريف وحدة عد خاصة بدولة غير متضمنة في مكتبة التفقيط، حسب الحاجة، كالمثال التالي:
                   تم تعريف وحدة عد  للعملة التايلندية  وهي البات تايلدندي
                      ويعادل  البات مئة ساتانغ
                      var batUnit = {'comprehensiveUnit': 'تايلندي', 'unit': 'بات', 'unitPlural': 'باتات',
                      'unitGender': TafqitUnitGender.masculine };
                      var sattangUnit = {'comprehensiveUnit': 'تايلندي', 'unit': 'ساتانغ', 'unitPlural': 'ساتانغات',
                      'unitMaxValue': 100,
                      'unitGender': TafqitUnitGender.masculine };
                      String taf = (tafqit.tafqitByUserDefinedUnit(listOfNumberAndParts:
                      [{$_amount: batUnit},
                      {$_cents : sattangUnit}])); """,
                  style: const TextStyle(color: Color(0xFF15A35C))),
            ),
            Text(
              ' ${tafqit.tafqitByUserDefinedUnit(listOfNumberAndParts: [
                    {_amount: batUnit},
                    {_cents: sattangUnit}
                  ])}',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _randomAmount,
        tooltip: 'Random Nmber',
        child: const Icon(Icons.reset_tv),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
