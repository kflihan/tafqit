import 'package:flutter/material.dart';
import 'package:tafqit/tafqit.dart';

import '../utility/utilty.dart';

class TafqitItemDetailsView4 extends StatefulWidget {
  const TafqitItemDetailsView4({Key? key}) : super(key: key);

  static const routeName = '/tafqit_item4';
  // static String title = '';
  @override
  State<TafqitItemDetailsView4> createState() => _TafqitItemDetailsView4State();
}

class _TafqitItemDetailsView4State extends State<TafqitItemDetailsView4> {
  num _counterCm = 0;
  num _counterKm = 0;
  num _counterMtr = 0;
  // late String title;
  var tafqit = Tafqit();

  void _incrementCounterCm() {
    setState(() {
      _counterCm = _counterCm >= 99 ? 0 : _counterCm + 1;
    });
  }

  void _incrementCounterMtr() {
    setState(() {
      _counterMtr = _counterMtr >= 999 ? 0 : _counterMtr + 1;
    });
  }

  void _incrementCounterKm() {
    setState(() {
      _counterKm++;
    });
  }

  void _ranodmCounters() {
    setState(() {
      _counterCm = RandomNum.nextInter(maxim: 100);
      _counterMtr = RandomNum.nextInter(maxim: 1000);
      _counterKm = RandomNum.nextInter(maxim: 1000);
    });
  }

  @override
  Widget build(BuildContext context) {
    final argsTitle = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('$argsTitle'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Directionality(
              textDirection: TextDirection.ltr,
              child: Text(
                ' $_counterKm Km  : $_counterMtr Mtr : $_counterCm Cm ',
              ),
            ),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Text("""
              var tafqit = Tafqit();
              String str1= tafqit.tafqitNumberWithParts(
                      listOfNumberAndParts: [$_counterKm , $_counterMtr , $_counterCm ],
                      tafqitUnitCode: TafqitUnitCode.kiloMetre);

                    """, style: const TextStyle(color: Color(0xFF15A45C))),
            ),
            Text(
              ' ${tafqit.tafqitNumberWithParts(listOfNumberAndParts: [
                    _counterKm,
                    _counterMtr,
                    _counterCm
                  ], tafqitUnitCode: TafqitUnitCode.kiloMetre)}',
              style: Theme.of(context).textTheme.headline6,
            ),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Text("""

              var tafqit = Tafqit();

              String str2=   tafqit.tafqitNumberWithParts(
                      listOfNumberAndParts: [$_counterKm , $_counterMtr , $_counterCm ],
                      tafqitUnitCode: TafqitUnitCode.kiloMetre,
                      justWord: 'المسافة المقطوعة هي فقط',
                      noOtherWord:' لاغير ، بعد مغادرة مدينة باريس '));""",
                  style: const TextStyle(color: Color(0xFF15A45C))),
            ),
            Text(
              ' ${tafqit.tafqitNumberWithParts(listOfNumberAndParts: [
                    _counterKm,
                    _counterMtr,
                    _counterCm
                  ], tafqitUnitCode: TafqitUnitCode.kiloMetre, justWord: 'المسافة المقطوعة هي فقط', noOtherWord: ' لاغير ، بعد مغادرة مدينة باريس ')}',
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounterCm,
            tooltip: 'سنتميتر',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: _incrementCounterMtr,
            tooltip: 'متر',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: _incrementCounterKm,
            tooltip: 'كيلومتر',
            child: const Icon(Icons.add),
          ),

          //_ranodmCounters
          FloatingActionButton(
            onPressed: _ranodmCounters,
            tooltip: 'رقم عشوائي',
            child: const Icon(Icons.reset_tv_rounded),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
