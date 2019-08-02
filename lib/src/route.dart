import 'package:flutter/widgets.dart' show required;

class Route {
  Route({
    this.path,
    this.name,
    this.query = const {},
    this.params = const {},
  });

  @required
  final String path;
  final String name;
  final Map<String, dynamic> query;
  final Map<String, dynamic> params;
}