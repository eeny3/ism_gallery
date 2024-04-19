import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ism/pages/home_page/home_page.dart';
import 'package:ism/pages/full_image_page/full_image_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      initial: true,
      page: HomeRoute.page,
    ),
    AutoRoute(
      page: FullImageRoute.page,
    ),
  ];
}