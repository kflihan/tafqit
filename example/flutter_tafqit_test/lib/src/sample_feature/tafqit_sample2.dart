import 'package:flutter/material.dart';

/// Displays detailed information about a tafqitItem.
class TafqitItemDetailsView2 extends StatelessWidget {
  const TafqitItemDetailsView2({Key? key}) : super(key: key);

  static const routeName = '/tafqit_item_2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Details 22'),
      ),
      body: const Center(
        child: Text('More Information Here 22'),
      ),
    );
  }
}
