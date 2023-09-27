import 'package:advance_flutter_mvvc/presentation/theme_manager.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  MyApp._internal(); //private named contructor
  int appState = 0;

  static final MyApp instance = MyApp
      ._internal(); // single instance -- singleton because it is static final and cannot be chnaged

  factory MyApp() => instance; // factory for the clas instance

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getApplicationTheme(),
    );
  }
}
