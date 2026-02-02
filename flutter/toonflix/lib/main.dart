import 'package:flutter/material.dart';
import 'package:toonflix/screens/home_screen.dart';
<<<<<<< HEAD
//import 'package:toonflix/models/webtoon_model.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});
=======

import 'dart:io';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..userAgent =
          'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36';
  }
}

void main() {
  HttpOverrides.global = MyHttpOverrides();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
>>>>>>> 04b2658 (flutter end)

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}
