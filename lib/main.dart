import 'package:flutter/material.dart';
import 'package:math/pages/division.dart';
import 'package:math/pages/intro.dart';
import 'package:math/pages/multiply.dart';

void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      initialRoute: '/',
      routes: {
        //'/':(context) => const IntroPage(),
        '/multiply': (context) => const Multiply(),
        '/division':(context) => const Division()
      },
    );
  }

}