import 'package:advance_flutter_mvvc/presentation/resources/routes_manager.dart';
import 'package:flutter/material.dart';

import '../presentation/resources/theme_manager.dart';

class MyApp extends StatefulWidget {
  MyApp._internal(); 
  int appState = 0;

  static final MyApp instance = MyApp
      ._internal(); // single instance --  singleton because it is static final and cannot be chnaged

  factory MyApp() => instance; // factory for the clas instance

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      theme: getApplicationTheme(),
    );
  }
}
