import 'package:flutter/material.dart';
import 'package:tafqit/tafqit.dart';

class TafqitItemDetailsView3 extends StatefulWidget {
  const TafqitItemDetailsView3({Key? key}) : super(key: key);

  static const routeName = '/tafqit_item3';
  // static String title = '';
  @override
  State<TafqitItemDetailsView3> createState() => _TafqitItemDetailsView3State();
}

class _TafqitItemDetailsView3State extends State<TafqitItemDetailsView3> {
  int _counterSec = 0;
  int _counterHour = 0;
  int _counterMin = 0;
  // late String title;
  var tafqit = Tafqit();
  var pressUnit = {
    'unit': 'كبسة',
    'unitPlural': 'كبسات',
    'unitGender': TafqitUnitGender.feminine
  };

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

                    """),
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
                      justWord: 'الوقت المتوقع هو:',
                      noOtherWord: 'بدءً من ساعة الصفر'));"""),
            ),
            Text(
              ' ${tafqit.tafqitNumberWithParts(listOfNumberAndParts: [
                    _counterHour,
                    _counterMin,
                    _counterSec
                  ], tafqitUnitCode: TafqitUnitCode.hour, justWord: 'الوقت المتوقع هو:', noOtherWord: 'بدءً من ساعة الصفر')}',
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
            tooltip: 'ثواني',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: _incrementCounterMin,
            tooltip: 'دقائق',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: _incrementCounterHour,
            tooltip: 'ساعات',
            child: const Icon(Icons.add),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
