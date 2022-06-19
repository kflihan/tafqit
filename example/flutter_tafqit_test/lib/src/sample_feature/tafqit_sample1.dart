import 'package:flutter/material.dart';
import 'package:tafqit/tafqit.dart';

import '../utility/utilty.dart';

class TafqitItemDetailsView1 extends StatefulWidget {
  const TafqitItemDetailsView1({Key? key}) : super(key: key);

  static const routeName = '/tafqit_item1';

  @override
  State<TafqitItemDetailsView1> createState() => _TafqitItemDetailsView1State();
}

class _TafqitItemDetailsView1State extends State<TafqitItemDetailsView1> {
  num _counter = RandomNum.ranodmNum();
  var tafqit = Tafqit();
  var pressUnit = {
    'unit': 'ضغطة',
    'unitPlural': 'ضغطات',
    'unitGender': TafqitUnitGender.feminine
  };

  void _randomCounter() {
    setState(() {
      _counter = RandomNum.nextInter();
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
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
              textDirection: TextDirection.ltr,
              child: Text(
                'You have pushed the button this many times: $_counter ',
              ),
            ),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Text(""" -----------------------
              يمكن استخدام الوحدات المعرفة سابقاً في مكتبة التفقيط كوحدة عد للرقم،
              مثال استخدام الوحدة  "مرّة:"
              (TafqitUnitCode.once)

                var tafqit = Tafqit();

                tafqit.tafqitNumberWithParts(
                listOfNumberAndParts: [$_counter],
                tafqitUnitCode: TafqitUnitCode.once)

              )""", style: const TextStyle(color: Color(0xFF15A35C))),
            ),
            Text(
              '  ${tafqit.tafqitNumberWithParts(
                listOfNumberAndParts: [_counter],
                tafqitUnitCode: TafqitUnitCode.once,
              )}',
              style: Theme.of(context).textTheme.headline6,
            ),
            const Directionality(
              textDirection: TextDirection.ltr,
              child: Text(
                "----------------- ",
              ),
            ),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Text("""
              يمكن تعريف وحدة عد خاصة حسب الحاجة، كالمثال التالي، 
              تم تعريف وحدة عد  كبسة او ضغطة او نقرة    أو ما توده
              واستخدمها مع مكتبة التفقيط كوحدة عد
              var tafqit = Tafqit();
              var pressUnit = {
              'unit': 'ضغطة',
              'unitPlural': 'ضغطات',
              'unitGender': TafqitUnitGender.feminine
              };
              String taf = tafqit.tafqitByUserDefinedUnit(listOfNumberAndParts: 
                      [{$_counter: pressUnit}],
                      justWord: 'قمت بالضغط على الزر  فقط', noOtherWord: 'لاغير', )""",
                  style: const TextStyle(color: Color(0xFF15A35C))),
            ),
            Text(
              ' ${tafqit.tafqitByUserDefinedUnit(
                listOfNumberAndParts: [
                  {_counter: pressUnit}
                ],
                justWord: 'قمت بالضغط على الزر  فقط',
                noOtherWord: 'لاغير',
              )}',
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: _randomCounter,
            tooltip: 'Random Nmber',
            child: const Icon(Icons.reset_tv),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
