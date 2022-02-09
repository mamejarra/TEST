import 'package:flutter/material.dart';
import 'package:myapptesting/presentation/screens/home_screen.dart';
import 'package:myapptesting/presentation/screens/second_screen.dart';
import 'package:myapptesting/presentation/screens/third_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    //final GlobalKey<ScaffoldState> key = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => HomeScreen(
            title: "Home Screen",
          ),
        );
      case '/second':
        return MaterialPageRoute(
          builder: (_) => SecondScreen(
            title: "Second Screen",
          ),
        );
      case '/third':
        return MaterialPageRoute(
          builder: (_) => ThirdScreen(
            title: "Thirst Screen",
          ),
        );
      default:
        return null;
    }
  }
}
