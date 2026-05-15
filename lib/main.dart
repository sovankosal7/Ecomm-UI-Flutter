import 'package:ecommerce/constant/color.dart';
import 'package:flutter/material.dart';

import 'UI/starter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        dividerTheme: DividerThemeData(color: Colors.transparent),
        scaffoldBackgroundColor: white,
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: starter_screen(),
    );
  }
}
