import 'package:flutter/material.dart';
import 'package:movie_search_challenge/views/core/routes/router.dart';

/// The root widget of the Movie Search app
class AppWidget extends StatelessWidget {
  /// Constructor for [AppWidget]
  AppWidget({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) => MaterialApp.router(
    debugShowCheckedModeBanner: false,
    title: 'Movie Search Challenge',
    theme: ThemeData(
      primarySwatch: Colors.purple,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    routerDelegate: _appRouter.delegate(),
    routeInformationParser: _appRouter.defaultRouteParser(),
  );
}
