import 'package:flutter/material.dart';

/// Displays detailed information about a tafqitItem.
class TafqitItemDetailsView3 extends StatelessWidget {
  const TafqitItemDetailsView3({Key? key}) : super(key: key);

  static const routeName = '/tafqit_item_3';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Details 33'),
      ),
      body: const Center(
        child: Text('More Information Here 33'),
      ),
    );
  }
}
