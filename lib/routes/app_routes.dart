import 'package:flutter/material.dart';
import '../screen/screen.dart';

class AppRoutes {
  static const initialRoute = 'login';

  static Map<String, Widget Function(BuildContext)> routes = {
    'login': (context) => LoginScreen(),
    'login2': (context) => LoginScreen2(),
    'register': (context) => RegisterScreen(),
    'password': (context) => PasswordRecovery(),
    'error': (context) => const ErrorScreen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const ErrorScreen());
  }
}
