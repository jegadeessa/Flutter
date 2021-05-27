import 'package:flutter/material.dart';

import './widgets/page.dart';

import 'widgets/appBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Themes.,
      home: Scaffold(
        appBar: AppBarWidget(),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: AppPage(),
        ),
      ),
    );
  }
}
