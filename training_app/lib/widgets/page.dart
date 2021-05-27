import 'package:flutter/material.dart';

import '../widgets/dropDownList.dart';

class AppPage extends StatefulWidget {
  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[DropDownList()],
    );
  }
}
