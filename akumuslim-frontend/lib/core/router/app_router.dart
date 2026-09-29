import 'package:flutter/material.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/quran/presentation/pages/quran_page.dart';

class AppRoutes {
  static const home = '/';
  static const quran = '/quran';
}

class AppRouter {
  static final Map routes = {
    AppRoutes.home: (_) => const HomePage(),
    AppRoutes.quran: (_) => const QuranPage(),
  };

  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case AppRoutes.quran:
        return MaterialPageRoute(builder: (_) => const QuranPage());
      default:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
          settings: settings,
        );
    }
  }
}