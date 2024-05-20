import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';
import 'package:quiz/resultado.dart';

import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: {
      '/': ((context) => HomePage()),
      'Quiz': (context) => Quiz(),
      Resultado.routeName: (context) => Resultado(),
    });
  }
}
