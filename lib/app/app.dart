import 'package:flutter/material.dart';
import 'package:inside_1/presentation/resources/route_manager.dart';
import 'package:inside_1/presentation/resources/theme_manager.dart';

class MyApp extends StatefulWidget {
  const MyApp._internal ();

  static const instances = MyApp._internal();

  factory MyApp() => instances;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      routerDelegate: router.routerDelegate,
      theme: getApplicationTheme(),
      builder: (BuildContext context, Widget? child){
        return child!;
      },

    );
  }
}
