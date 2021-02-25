import 'package:flutter/material.dart';

class MyAppBar extends AppBar {
  MyAppBar({ Widget leading, Widget title, bool canGoBack = false, bool centerTitle = true, List<Widget> actions }) : super(
    leading: leading,
    title: title,
    automaticallyImplyLeading: canGoBack,
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    centerTitle: centerTitle,
    // elevation: 0,
    actions: actions
  );
}