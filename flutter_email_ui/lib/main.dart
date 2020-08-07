import 'package:flutter/material.dart';
import 'package:flutter_email_ui/pages/home/home_page.dart';
import 'package:flutter_email_ui/theme/theme_config.dart';
import 'package:flutter_email_ui/utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '${Constants.appName}',
      debugShowCheckedModeBanner: false,
      theme: ThemeConfig.lightTheme,
      home: HomePage(),
    );
  }
}
