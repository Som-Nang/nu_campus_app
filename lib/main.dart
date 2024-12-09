import 'package:campus_app/views/start_up.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

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
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: kTextBlackColor,
        appBarTheme: const AppBarTheme(color: kTextBlackColor),
      ),
      themeMode: ThemeMode.light,
      home: const StartUpView(),
    );
  }
}
