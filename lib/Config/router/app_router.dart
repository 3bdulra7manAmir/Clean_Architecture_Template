

import 'package:clean_arc/Config/router/app_routes.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter
{
  AppRouter._();

  static final router = GoRouter(
    initialLocation: AppRoutes.kMainView,
    routes:
    [
      // GoRoute(
      //   path: AppRoutes.kMainView,
      //   name: AppRoutes.kMainView,
      //   builder: (context, state) => const MainView(),
      // ),

      // StatefulShellRoute.indexedStack(
      //   builder: (context, state, navigationShell) => BottomNavExample(navigationShell: navigationShell),
      //   branches: [
      //     StatefulShellBranch(
      //       initialLocation: AppRoutes.kHomeView,
      //       routes: [
      //         GoRoute(
      //           name: AppRoutes.kHomeView,
      //           path: AppRoutes.kHomeView,
      //           builder: (context, state) => const HomePage(),
      //         ),
      //       ],
      //     ),
      //   ]
      // ),
    ] 
  );
}
