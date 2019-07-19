import 'package:flutter/widgets.dart';

import 'theme.dart';

class AppBar extends StatelessWidget {
  AppBar({this.title, this.left, this.right});

  final Widget left;
  final Widget title;
  final Widget right;

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMediaQuery(context));

    final double _kToolBarHeight = MediaQuery.of(context).padding.top;

    print(Theme.of(context).name);

    return Container(
      height: 56,
      margin: EdgeInsets.only(top: _kToolBarHeight),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1.0,
            color: Color(0xFFFF0000),
          ),
        ),
      ),
      child: Flex(
        direction: Axis.horizontal,
        children: <Widget>[
          Container(child: left),
          Expanded(child: Center(child: title)),
          Container(child: right),
        ],
      ),
    );
  }
}
