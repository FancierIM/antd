import 'dart:ui' as ui;

import 'package:flutter/widgets.dart';

import 'theme.dart';
import 'app_bar.dart';
import 'bottom_navigation_bar.dart';

class AntdApp extends StatefulWidget {
  AntdApp({
    Key key,
    this.appBar,
    this.body,
    this.bottomNavigationBar,
  });

  final AppBar appBar;
  final Widget body;
  final BottomNavigationBar bottomNavigationBar;

  @override
  _AntdState createState() => _AntdState();
}

class _AntdState extends State<AntdApp> {
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
                  Container(child: appBar),
                  Expanded(child: body),
                  Container(child: bottomNavigationBar),
                ],
              ),
            ),
          );
  }
}
