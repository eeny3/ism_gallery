import 'package:flutter/material.dart';
import 'package:ism/routing/app_router.dart';

class App extends StatelessWidget {
  final _router = AppRouter();

  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'ism',
      theme: ThemeData(),
      routerConfig: _router.config(),
    );
  }
}
