import 'package:flutter/material.dart';
import '../screen/screen.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (context) => const HomeScreen(),
    'initial': (context) => const InitialScreen(), // ¡Añade esta línea!
    'detail': (context) => const DetailScreen(),
    'list_food': (context) => ListFoodScreen(),
    'list_vehicles': (context) => ListVehiclesScreen(),
    'list_tech': (context) => ListTechScreen(),
    'list_sports': (context) => ListSportsScreen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const ErrorScreen(),
    );
  }
}