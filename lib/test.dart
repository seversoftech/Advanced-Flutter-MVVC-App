import 'package:advance_flutter_mvvc/app/app.dart';
import 'package:flutter/material.dart';

class Text extends StatelessWidget {
  const Text({super.key});

  void updateAppStae() {
    MyApp.instance.appState = 10;
  }

  void getAppState() {
    print(MyApp.instance.appState);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
