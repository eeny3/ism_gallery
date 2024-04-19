import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FullImagePage extends StatelessWidget {
  final String tag;
  final String url;

  const FullImagePage({
    super.key,
    required this.url,
    required this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121220),
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            tag: tag,
            child: Image.network(
              url,
            ),
          ),
        ),
      ),
    );
  }
}