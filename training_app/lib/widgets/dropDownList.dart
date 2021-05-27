import 'package:flutter/material.dart';
import 'package:training_app/resources/images.dart';

class DropDownList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          children: <Widget>[
            Text(
              'My Prepaid',
              style: TextStyle(),
            ),
          ],
        ),
        IconButton(
            icon: Image.asset(
              Images.addIcon,
              width: 21,
              height: 21,
            ),
            onPressed: null)
      ],
    );
  }
}
