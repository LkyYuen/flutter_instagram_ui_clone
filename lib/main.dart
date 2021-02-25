import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui_clone/routes/routes.dart';
import 'package:flutter_instagram_ui_clone/routes/router.dart' as router;

void main() {

  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App extends StatefulWidget {

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

  String defaultRoute = tabsRoute;
  var loginToken;
  bool tokenIsValid = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return defaultRoute == null ? 
      Center(
        child: Container(
          // constraints: BoxConstraints.expand(),
          // color: Colors.white,
          child: Container( child: CircularProgressIndicator()),
        ),
      )
    : MaterialApp(
      title: 'Cinema App',
      theme: ThemeData(
        // primaryColor: Color(0xff444E71),
        primaryColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: router.generateRoute,
      initialRoute: defaultRoute,
      // color: Colors.black,
    );
  }
}