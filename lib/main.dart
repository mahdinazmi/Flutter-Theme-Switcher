import 'package:flutter/material.dart';
import 'package:flutterthemeswitcher/services/theme_provider.dart';
import 'package:flutterthemeswitcher/view/settings.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: Consumer<ThemeNotifier>(
        builder: (context, ThemeNotifier notifier, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Flutter Theme Switcher",
            theme: notifier.darkTheme ? dark : light,
            home: SettingsPage(),
          );
        },
      ),
      );
  }
}