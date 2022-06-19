import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'sample_feature/sample_item_list_view.dart';
import 'sample_feature/tafqit_sample1.dart';
import 'sample_feature/tafqit_sample2.dart';
import 'sample_feature/tafqit_sample3.dart';
import 'sample_feature/tafqit_sample4.dart';
import 'sample_feature/tafqit_sample5.dart';
import 'settings/settings_controller.dart';
import 'settings/settings_view.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.settingsController,
  }) : super(key: key);

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    // Glue the SettingsController to the MaterialApp.
    //
    // The AnimatedBuilder Widget listens to the SettingsController for changes.
    // Whenever the user updates their settings, the MaterialApp is rebuilt.
    return AnimatedBuilder(
      animation: settingsController,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          restorationScopeId: 'app',
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('ar', ''),
          ],
          onGenerateTitle: (BuildContext context) =>
              AppLocalizations.of(context)!.appTitle,
          theme: ThemeData(),
          darkTheme: ThemeData.dark(),
          themeMode: settingsController.themeMode,
          onGenerateRoute: (RouteSettings routeSettings) {
            return MaterialPageRoute<void>(
              settings: routeSettings,
              builder: (BuildContext context) {
                switch (routeSettings.name) {
                  case SettingsView.routeName:
                    return SettingsView(controller: settingsController);

                  case TafqitItemDetailsView1.routeName:
                    return const TafqitItemDetailsView1();

                  case TafqitItemDetailsView2.routeName:
                    return const TafqitItemDetailsView2();

                  case TafqitItemDetailsView3.routeName:
                    return const TafqitItemDetailsView3();
                  case TafqitItemDetailsView4.routeName:
                    return const TafqitItemDetailsView4();
                  case TafqitItemDetailsView5.routeName:
                    return const TafqitItemDetailsView5();

                  case TafqitSampleItemListView.routeName:
                  default:
                    return const TafqitSampleItemListView();
                }
              },
            );
          },
        );
      },
    );
  }
}
