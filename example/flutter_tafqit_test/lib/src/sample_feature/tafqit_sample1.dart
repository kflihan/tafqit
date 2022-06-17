import 'package:flutter/material.dart';

/// Displays detailed information about a tafqitItem.
class TafqitItemDetailsView1 extends StatelessWidget {
  const TafqitItemDetailsView1({Key? key}) : super(key: key);

  static const routeName = '/tafqit_item_1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Details 11'),
      ),
      body: const Center(
        child: Text('More Information Here 11'),
      ),
    );
  }
}
