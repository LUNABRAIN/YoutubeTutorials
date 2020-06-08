import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:lunabrainhelloworld/pages/homepage.dart';

main(List<String> args) {
  return runApp(DevicePreview(builder: (context) => MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.of(context).locale,
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
      },
    );
  }
}

