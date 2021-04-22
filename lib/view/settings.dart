import 'package:flutter/material.dart';
import 'package:flutterthemeswitcher/services/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme Switcher"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Consumer<ThemeNotifier>(
                builder:(context, notifier, child) => 
                  SwitchListTile(
                    title: Text("Dark Mode"),
                    onChanged:(value){
                      notifier.toggleTheme();
                  } ,
                  value: notifier.darkTheme ,
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Free Flutter Tutorials In Flutteryar.com "),
              ),
            ),
          ]
        ),
      )
    );
  }
}