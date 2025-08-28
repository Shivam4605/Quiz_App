import 'package:flutter/material.dart';
import 'package:quiz_app/firstpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State createState() {
    return _MyApp();
  }
}

class _MyApp extends State {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quiz App",
      debugShowCheckedModeBanner: false,
      home: QuizeApp(),
    );
  }
}
