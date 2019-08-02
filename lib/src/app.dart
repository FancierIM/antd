import 'dart:ui' as ui;

import 'package:flutter/widgets.dart' hide Route;

import 'theme.dart';
import 'route.dart';
import 'app_bar.dart';
import 'bottom_navigation_bar.dart';

class AntdApp extends StatefulWidget {
  AntdApp({
    Key key,
    this.navigatorKey,
    this.home,
    this.routes,
    this.appBar,
    this.body,
    this.bottomNavigationBar,
  });

  final GlobalKey<NavigatorState> navigatorKey;
  final Widget home;
  final List<Route> routes;

  final AppBar appBar;
  final Widget body;
  final BottomNavigationBar bottomNavigationBar;

  @override
  _AntdAppState createState() => _AntdAppState();
}

class _AntdAppState extends State<AntdApp> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQueryData.fromWindow(ui.window),
      child: SafeArea(
        top: false,
        child: Theme(
          data: ThemeData(
            name: 'Theme',
          ),
          child: _AntdAppTheme(
            appBar: widget.appBar,
            body: widget.body,
            bottomNavigationBar: widget.bottomNavigationBar,
          ),
        ),
      ),
    );
  }
}

class _AntdAppTheme extends StatelessWidget {
  _AntdAppTheme({this.appBar, this.body, this.bottomNavigationBar});

  final AppBar appBar;
  final Widget body;
  final BottomNavigationBar bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Container(
        color: Color(0xFFF5F5F5),
        child: Flex(
          direction: Axis.vertical,
          children: <Widget>[
            Container(child: appBar ?? Container()),
            Expanded(child: body),
            Container(child: bottomNavigationBar ?? Container()),
          ],
        ),
      ),
    );
  }
}
