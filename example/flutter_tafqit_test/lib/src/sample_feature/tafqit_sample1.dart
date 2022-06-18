import 'package:flutter/material.dart';
import 'package:tafqit/tafqit.dart';

class TafqitItemDetailsView1 extends StatelessWidget {
  const TafqitItemDetailsView1({Key? key}) : super(key: key);

  static const routeName = '/tafqit_item1';

  @override
  Widget build(BuildContext context) {
    return const MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var tafqit = Tafqit();
  var pressUnit = {
    'unit': 'كبسة',
    'unitPlural': 'كبسات',
    'unitGender': TafqitUnitGender.feminine
  };

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('مثال تفقيط عدد النقرات لزيادة العداد: '),
      ),
      body: Center(
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
              child: Text("""

                var tafqit = Tafqit();

                tafqit.tafqitNumberWithParts(
                      listOfNumberAndParts: [$_counter],
                      tafqitUnitCode: TafqitUnitCode.none,
                      justWord: 'عدد عدد النقرات على الزر هي فقط')"""),
            ),
            Text(
              ' ${tafqit.tafqitNumberWithParts(
                listOfNumberAndParts: [_counter],
                tafqitUnitCode: TafqitUnitCode.none,
                justWord: 'عدد عدد النقرات على الزر هي فقط',
              )}',
              style: Theme.of(context).textTheme.headline6,
            ),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Text("""

                var tafqit = Tafqit();

                tafqit.tafqitNumberWithParts(
                listOfNumberAndParts: [$_counter],
                tafqitUnitCode: TafqitUnitCode.once)
              )"""),
            ),
            Text(
              '  ${tafqit.tafqitNumberWithParts(
                listOfNumberAndParts: [_counter],
                tafqitUnitCode: TafqitUnitCode.once,
              )}',
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
