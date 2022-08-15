import 'package:flutter/cupertino.dart';
import 'package:flutter_learn_bloc/pages/another_page.dart';
import 'package:flutter_learn_bloc/pages/home.dart';

class AppRoute {
  static const home = 'home';
  static const another = 'another';

  final _route = <String, WidgetBuilder>{
    home: (context) => const MyHomePage(title: 'HomePage'),
    another: (context) => const AnotherPage(title: 'AnotherPage'),
  };

  get getRouteAll => _route;
}
