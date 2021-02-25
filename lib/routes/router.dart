import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui_clone/routes/routes.dart';

// import 'package:flutter_instagram_ui_clone/screens/home.dart';
import 'package:flutter_instagram_ui_clone/screens/tabs.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case tabsRoute:
      return MaterialPageRoute(builder: (context) => TabsPage());
    default:
      return MaterialPageRoute(builder: (context) => TabsPage());
  }
}