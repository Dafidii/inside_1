
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inside_1/presentation/login/login.dart';
import 'package:inside_1/presentation/signup/signup.dart';
import 'package:inside_1/presentation/welcome/welcome.dart';

class AppPageRoutePath {
  static const String welcome = '/welcome';
  static const String login = 'login';
  static const String createAccount = 'createAccount';
  static const String home = 'home';
  static const String signup = 'SignUp';
}
class AppPageRouteName {
  static const String welcome = 'Welcome';
  static const String login = 'Login';
  static const String createAccount = 'CreateAccount';
  static const String home = 'Home';
  static const String signup = 'SignUp';

}

final GlobalKey<NavigatorState> _rootNavigatorKey =
GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
GlobalKey<NavigatorState>(debugLabel: 'shell');

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: AppPageRoutePath.welcome,
  routes: [
    GoRoute(
      name: AppPageRouteName.welcome,
      path: AppPageRoutePath.welcome,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return MaterialPage(
          key: state.pageKey,
          child: const Welcome(),
        );
      },
      routes: [
        GoRoute(
          name: AppPageRouteName.login,
          path: AppPageRoutePath.login,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return MaterialPage(
              key: state.pageKey,
              child: const LoginView(),
            );
          },
        ),
        GoRoute(
          name: AppPageRouteName.signup,
          path: AppPageRoutePath.signup,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return MaterialPage(
              key: state.pageKey,
              child: const SignupView(),
            );
          },
        ),
      //   GoRoute(
      //     name: AppPageRouteName.createAccount,
      //     path: AppPageRoutePath.createAccount,
      //     pageBuilder: (BuildContext context, GoRouterState state) {
      //       return MaterialPage(
      //         key: state.pageKey,
      //         child: const CreateAccountView(),
      //       );
      //     },
      //   ),
      ],
    ),
  ],
);