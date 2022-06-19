import 'package:flutter/material.dart';
import 'package:tafqit/tafqit.dart';

import '../utility/utilty.dart';

class TafqitItemDetailsView5 extends StatefulWidget {
  const TafqitItemDetailsView5({Key? key}) : super(key: key);

  static const routeName = '/tafqit_item5';
  // static String title = '';
  @override
  State<TafqitItemDetailsView5> createState() => _TafqitItemDetailsView5State();
}

class _TafqitItemDetailsView5State extends State<TafqitItemDetailsView5> {
  num _counterGram = 0;
  num _counterTon = 0;
  num _counterKg = 0;
  // late String title;
  var tafqit = Tafqit();

  void _incrementCounterGram() {
    setState(() {
      _counterGram = _counterGram >= 1000 ? 0 : _counterGram + 1;
    });
  }

  void _incrementCounterKg() {
    setState(() {
      _counterKg = _counterKg >= 1000 ? 0 : _counterKg + 1;
    });
  }

  void _incrementCounterTon() {
    setState(() {
      _counterTon++;
    });
  }

  void _ranodmCounters() {
    setState(() {
      _counterGram = RandomNum.nextInter(maxim: 1000);
      _counterKg = RandomNum.nextInter(maxim: 1000);
      _counterTon = RandomNum.nextInter(maxim: 1000);
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
                ' $_counterTon Ton  : $_counterKg Kg : $_counterGram Gram ',
              ),
            ),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Text("""
              var tafqit = Tafqit();
              String str1= tafqit.tafqitNumberWithParts(
                      listOfNumberAndParts: [$_counterTon , $_counterKg , $_counterGram ],
                      tafqitUnitCode: TafqitUnitCode.metricTon);

                    """, style: const TextStyle(color: Color(0xFF15A55C))),
            ),
            Text(
              ' ${tafqit.tafqitNumberWithParts(listOfNumberAndParts: [
                    _counterTon,
                    _counterKg,
                    _counterGram
                  ], tafqitUnitCode: TafqitUnitCode.metricTon)}',
              style: Theme.of(context).textTheme.headline6,
            ),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Text("""

              var tafqit = Tafqit();

              String str2=   tafqit.tafqitNumberWithParts(
                      listOfNumberAndParts: [$_counterTon],
                      tafqitUnitCode: TafqitUnitCode.ounce ));""",
                  style: const TextStyle(color: Color(0xFF15A55C))),
            ),
            Text(
              ' ${tafqit.tafqitNumberWithParts(listOfNumberAndParts: [
                    _counterTon
                  ], tafqitUnitCode: TafqitUnitCode.ounce)}',
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounterGram,
            tooltip: 'غرام',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: _incrementCounterKg,
            tooltip: 'كيلو',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: _incrementCounterTon,
            tooltip: 'طن',
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
