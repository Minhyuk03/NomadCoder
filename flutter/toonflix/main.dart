import 'package:flutter/material.dart';
import 'package:toonflix/screens/home_screen.dart';
//import 'package:toonflix/models/webtoon_model.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}
