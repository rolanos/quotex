import 'package:flutter/material.dart';
import 'package:quotex/core/theme.dart';
import 'package:quotex/screens/select_language.dart';
import 'package:quotex/screens/survey/survey_second.dart';
import 'package:quotex/screens/survey/survey_third.dart';

import 'screens/start_screen.dart';
import 'screens/survey/survey_first.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: getTheme(),
      home: const SelectLanguageScreen(),
    );
  }
}
