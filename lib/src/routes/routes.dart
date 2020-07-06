import 'package:flutter/material.dart';

import 'package:intro_components/src/pages/alert_page.dart';
import 'package:intro_components/src/pages/avatar_page.dart';
import 'package:intro_components/src/pages/card_page.dart';
import 'package:intro_components/src/pages/home_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    '/alert': (context) => AlertPage(),
    '/avatar': (context) => AvatarPage(),
    '/card': (context) => CardPage(),
  };
}
