import 'package:flutter/widgets.dart';

class Theme extends StatelessWidget {
  Theme({
    Key key,
    this.data,
    @required this.child,
  });

  final ThemeData data;

  final Widget child;

  static ThemeData of(BuildContext context) {
    final _InheritedTheme inheritedTheme = context.inheritFromWidgetOfExactType(_InheritedTheme);

    return inheritedTheme.theme.data;
  }

  @override
  Widget build(BuildContext context) {
    return _InheritedTheme(
      theme: this,
      child: Container(
        child: child,
      ),
    );
  }
}

class _InheritedTheme extends InheritedWidget {
  const _InheritedTheme({
    Key key,
    this.theme,
    @required Widget child,
  }) : assert(theme != null), super(key: key, child: child);

  final Theme theme;

  @override
  bool updateShouldNotify(_InheritedTheme old) => theme.data != old.theme.data;
}

class ThemeData {
  // TODO
  ThemeData({
    this.name,
    this.primaryColor = const Color(0xFF1890FF),
  });

  final String name;
  final Color primaryColor;
}
