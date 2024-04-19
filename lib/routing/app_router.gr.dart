// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    FullImageRoute.name: (routeData) {
      final args = routeData.argsAs<FullImageRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: FullImagePage(
          key: args.key,
          url: args.url,
          tag: args.tag,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HomePage(key: args.key),
      );
    },
  };
}

/// generated route for
/// [FullImagePage]
class FullImageRoute extends PageRouteInfo<FullImageRouteArgs> {
  FullImageRoute({
    Key? key,
    required String url,
    required String tag,
    List<PageRouteInfo>? children,
  }) : super(
          FullImageRoute.name,
          args: FullImageRouteArgs(
            key: key,
            url: url,
            tag: tag,
          ),
          initialChildren: children,
        );

  static const String name = 'FullImageRoute';

  static const PageInfo<FullImageRouteArgs> page =
      PageInfo<FullImageRouteArgs>(name);
}

class FullImageRouteArgs {
  const FullImageRouteArgs({
    this.key,
    required this.url,
    required this.tag,
  });

  final Key? key;

  final String url;

  final String tag;

  @override
  String toString() {
    return 'FullImageRouteArgs{key: $key, url: $url, tag: $tag}';
  }
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<HomeRouteArgs> page = PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}
