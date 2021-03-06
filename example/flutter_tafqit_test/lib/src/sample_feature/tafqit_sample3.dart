import 'package:flutter/material.dart';
import 'package:tafqit/tafqit.dart';

import '../utility/utilty.dart';

class TafqitItemDetailsView3 extends StatefulWidget {
  const TafqitItemDetailsView3({Key? key}) : super(key: key);

  static const routeName = '/tafqit_item3';
  // static String title = '';
  @override
  State<TafqitItemDetailsView3> createState() => _TafqitItemDetailsView3State();
}

class _TafqitItemDetailsView3State extends State<TafqitItemDetailsView3> {
  num _counterSec = 0;
  num _counterHour = 0;
  num _counterMin = 0;
  //   num _amount = RandomNum.ranodmNum();
  // num _cents = RandomNum.ranodmNum(maxim: 99);
  // late String title;
  var tafqit = Tafqit();

  void _incrementCounterSec() {
    setState(() {
      _counterSec = _counterSec >= 59 ? 0 : _counterSec + 1;
    });
  }

  void _incrementCounterMin() {
    setState(() {
      _counterMin = _counterMin >= 59 ? 0 : _counterMin + 1;
    });
  }

  void _incrementCounterHour() {
    setState(() {
      _counterHour++;
    });
  }

  void _ranodmCounters() {
    setState(() {
      _counterSec = RandomNum.nextInter(maxim: 59);
      _counterMin = RandomNum.nextInter(maxim: 59);
      _counterHour = RandomNum.nextInter(maxim: 200);
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
                ' $_counterHour H  : $_counterMin Mi : $_counterSec Sec ',
              ),
            ),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Text("""
              var tafqit = Tafqit();
              String str1= tafqit.tafqitNumberWithParts(
                      listOfNumberAndParts: [$_counterHour , $_counterMin , $_counterSec ],
                      tafqitUnitCode: TafqitUnitCode.hour);

                    """, style: const TextStyle(color: Color(0xFF15A35C))),
            ),
            Text(
              ' ${tafqit.tafqitNumberWithParts(listOfNumberAndParts: [
                    _counterHour,
                    _counterMin,
                    _counterSec
                  ], tafqitUnitCode: TafqitUnitCode.hour)}',
              style: Theme.of(context).textTheme.headline6,
            ),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Text("""

              var tafqit = Tafqit();

              String str2=   tafqit.tafqitNumberWithParts(
                      listOfNumberAndParts: [$_counterHour , $_counterMin , $_counterSec ],
                      tafqitUnitCode: TafqitUnitCode.hour,
                      justWord: '?????????? ?????????????? ????:',
                      noOtherWord: '???????? ???? ???????? ??????????'));""",
                  style: const TextStyle(color: Color(0xFF15A35C))),
            ),
            Text(
              ' ${tafqit.tafqitNumberWithParts(listOfNumberAndParts: [
                    _counterHour,
                    _counterMin,
                    _counterSec
                  ], tafqitUnitCode: TafqitUnitCode.hour, justWord: '?????????? ?????????????? ????:', noOtherWord: '???????? ???? ???????? ??????????')}',
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounterSec,
            tooltip: '??????????',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: _incrementCounterMin,
            tooltip: '??????????',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: _incrementCounterHour,
            tooltip: '??????????',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
              onPressed: _ranodmCounters,
              tooltip: '?????? ????????????',
              child: const Icon(
                Icons.reset_tv_rounded,
              ))
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
