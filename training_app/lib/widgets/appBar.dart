import 'package:flutter/material.dart';

import '../resources/Images.dart';
import '../resources/colors.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.whiteColor,
      elevation: 0,
      leading: IconButton(
          icon: Image.asset(
            Images.menuIcon,
            width: 22,
            height: 22,
          ),
          onPressed: null),
      actions: <Widget>[
        IconButton(
            padding: EdgeInsets.only(right: 24),
            icon: Image.asset(
              Images.bellIcon,
              width: 22,
              height: 22,
            ),
            onPressed: null),
        IconButton(
            icon: Image.asset(
              Images.profileDp,
              width: 32,
              height: 32,
            ),
            onPressed: null),
      ],
    );
  }
}
