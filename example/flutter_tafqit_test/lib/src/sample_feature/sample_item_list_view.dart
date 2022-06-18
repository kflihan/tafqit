import 'package:flutter/material.dart';

import '../settings/settings_view.dart';
import 'sample_item.dart';

class TafqitSampleItemListView extends StatelessWidget {
  const TafqitSampleItemListView({
    Key? key,
    this.items = const [
      TafqitSampleItem(1, 'مثال تفقيط عدد النقرات على زر زيادة عداد '),
      TafqitSampleItem(2, 'مثال تفقيط العملات المعرفة سابقا بمكتبة التفقيط '),
      TafqitSampleItem(3,
          'مثال تفقيط الزمن، المسافات، الاوزان، المعرفة سابقا بمكتبة التفقيط')
    ],
  }) : super(key: key);

  static const routeName = '/';

  final List<TafqitSampleItem> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'أختر من القائمة احد الامثلة التوضيحية لاستخدام مكتبة التفقيط باللغة العربية:'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.restorablePushNamed(context, SettingsView.routeName);
            },
          ),
        ],
      ),
      body: ListView.builder(
        restorationId: 'TafqitSampleItemListView',
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          final item = items[index];

          return ListTile(
              title: Text(item.title),
              leading: const CircleAvatar(
                foregroundImage: AssetImage('assets/images/flutter_logo.png'),
              ),
              onTap: () {
                Navigator.restorablePushNamed(
                  context,
                  //   TafqitSampleItemDetailsView.routeName,
                  '/tafqit_item${index + 1}',
                );
              });
        },
      ),
    );
  }
}
