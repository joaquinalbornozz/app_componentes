import 'package:app_componentes/src/pages/animated_page.dart';
import 'package:app_componentes/src/pages/inputs_page.dart';
import 'package:app_componentes/src/pages/slider_page.dart';
import 'package:flutter/material.dart';

import '../pages/alert_page.dart';
import '../pages/avatar_page.dart';
import '../pages/cards_page.dart';
import '../pages/home_page.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
    "/": (BuildContext context) => MyHomePage(),
    "alert": (BuildContext context) => const AlertPage(),
    "avatar": (BuildContext context) => const AvatarPage(),
    "card": (BuildContext context) => const CardsPage(),
    "animatedContainer": (BuildContext context) =>
        const AnimatedContainerPage(),
    "inputs": (BuildContext context) => const InputsPage(),
    "slider": (BuildContext context) => const SliderPage(),
  };
}
