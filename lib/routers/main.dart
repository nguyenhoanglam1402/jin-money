import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jin_app/constants/screen_map/main.dart';
import 'package:jin_app/providers/model/auth.model.dart';
import 'package:jin_app/screens/create_earning.dart';
import 'package:jin_app/screens/home.dart';
import 'package:jin_app/screens/login.dart';
import 'package:jin_app/services/authenticate.dart';
import 'package:provider/provider.dart';

Widget renderSafeZone(Widget child) {
  return Container(
      color: Colors.white,
      child: SafeArea(
        child: child,
      ));
}

final GoRouter routers = GoRouter(
    initialLocation: AppRoot.home.toPath,
    routes: <RouteBase>[
      GoRoute(
          path: AppRoot.home.toPath,
          name: AppRoot.home.toName,
          builder: (context, state) {
            return renderSafeZone(const Home());
          }),
      GoRoute(
          path: AppRoot.login.toPath,
          name: AppRoot.login.toName,
          builder: (context, state) {
            return renderSafeZone(const Login());
          }),
      GoRoute(
          path: AppRoot.createEarning.toPath,
          name: AppRoot.createEarning.toName,
          builder: (context, state) {
            return renderSafeZone(const CreateEarning());
          })
    ],
    redirect: (context, state) {
      final authModel = context.watch<AuthProviderModel>();
      final loginLocation = state.namedLocation(AppRoot.login.toName);
      final homeLocation = state.namedLocation(AppRoot.home.toName);

      if (!authModel.isAuth) {
        return loginLocation;
      } else {
        return homeLocation;
      }
      return null;
    });
